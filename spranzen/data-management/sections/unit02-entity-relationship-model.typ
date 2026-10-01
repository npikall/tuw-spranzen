#import "@preview/fletcher:0.5.8" as fletcher: diagram, node
#import fletcher.shapes: diamond, ellipse, hexagon, rect

= Entity Relationship Model

// ER diagram helpers: node names are derived from the label text,
// pass `name: "..."` to override (e.g. for duplicate attribute names).
#let _er-node(shape, pos, body, name: none, ..args) = node(
  pos,
  body,
  name: label(if name == none { body } else { name }),
  shape: shape,
  stroke: .5pt,
  ..args,
)
#let _double = (extrude: (0, 2.5))
#let entity = _er-node.with(rect)
#let weak-entity = entity.with(.._double)
#let attr = _er-node.with(ellipse)
#let multi-attr = attr.with(.._double)
#let derived-attr = attr.with(stroke: (thickness: .5pt, dash: "dashed"))
#let key-attr(pos, body, name: none, ..args) = attr(
  pos,
  underline(body),
  name: if name == none { body } else { name },
  ..args,
)
#let partial-key-attr(pos, body, name: none, ..args) = attr(
  pos,
  underline(stroke: (thickness: .5pt, dash: "dashed"), body),
  name: if name == none { body } else { name },
  ..args,
)
#let relation = _er-node.with(diamond)
#let ident-relation = relation.with(.._double)
#let isa = _er-node.with(hexagon, inset: 4pt)
#let edge(from, to, ..args) = fletcher.edge(label(from), label(to), ..args)
// total participation is drawn as a double line
#let total(from, to, ..args) = edge(from, to, "=", ..args)

== Database Design Process
+ *Requirements analysis* -- what do we need? Pull out object types (nouns), activities
  (verbs) and properties.
+ *Conceptual design* -- ER diagram, independent of any DB technology.
+ *Logical design* -- map to a data model (usually relational: tables).
+ *Physical design* -- implementation (`CREATE TABLE`) and optimization.

== Basic Concepts
/ Entity type: kind of thing we store info about (rectangle). An _entity_ is one
  instance (e.g. "Marcel" of type Cook).
/ Relationship type: connects entities of one or more entity types (diamond, labelled
  with a verb).
/ Attribute: property of an entity type _or_ a relationship type (ellipse). All entities
  of a type share the same attributes.
/ Primary key: attribute(s) uniquely identifying an entity (underlined).

#figure(
  diagram(
    spacing: (10mm, 6mm),
    entity((0, 1), "Cook"),
    key-attr((-1, 0), "CookID"),
    attr((0, 0), "Name", name: "c-name"),
    attr((1, 0), "Country"),
    relation((1.5, 1), "creates"),
    entity((3, 1), "Recipe"),
    key-attr((2.3, 0), "RecipeID"),
    attr((3.3, 0), "Name", name: "r-name"),
    attr((4.3, 0), "PrepMinutes"),
    relation((3, 2), "uses"),
    attr((2, 2), "Quantity"),
    entity((3, 3), "Ingredient"),
    key-attr((2, 4), "IngredientID"),
    attr((3, 4), "Name", name: "i-name"),
    attr((4, 4), "Unit"),

    edge("Cook", "CookID"),
    edge("Cook", "c-name"),
    edge("Cook", "Country"),
    edge("Cook", "creates"),
    edge("creates", "Recipe"),
    edge("Recipe", "RecipeID"),
    edge("Recipe", "r-name"),
    edge("Recipe", "PrepMinutes"),
    edge("Recipe", "uses"),
    edge("uses", "Ingredient"),
    edge("uses", "Quantity"),
    edge("Ingredient", "IngredientID"),
    edge("Ingredient", "i-name"),
    edge("Ingredient", "Unit"),
  ),
  caption: [Recipe app. Quantity is an attribute of the relationship _uses_.],
)

=== Attribute Types
- *Composite* -- split into sub-attributes (Name -> FirstName, LastName).
- *Multi-valued* -- several values per entity (double border).
- *Derived* -- computed from other data, not stored (dashed border).

#figure(
  diagram(
    spacing: (6mm, 6mm),
    entity((0, 0), "Cook"),
    attr((0, 1), "Name"),
    attr((-0.6, 2), "FirstName"),
    attr((0.6, 2), "LastName"),
    entity((2.5, 0), "Recipe"),
    multi-attr((2, 1), "CuisineTags"),
    derived-attr((3, 1), "TotalCalories"),

    edge("Cook", "Name"),
    edge("Name", "FirstName"),
    edge("Name", "LastName"),
    edge("Recipe", "CuisineTags"),
    edge("Recipe", "TotalCalories"),
  ),
  caption: [Composite, multi-valued and derived attributes.],
)

== Relationship Characteristics
/ Degree: number of entity types taking part: _recursive_ (1), _binary_ (2), _ternary_
  (3), ...
/ Cardinality: how many entities on each side participate: 1:1, 1:N, N:M. Alternative
  $[min, max]$ notation, e.g. $[0, N]$ any number, $[1, 1]$ exactly one, $[1, N]$ at
  least one.
/ Participation: _total_ (every entity takes part, double line) vs. _partial_ (only
  some, single line).

Recursive relationships label the _roles_ of both ends on the edges.

#figure(
  diagram(
    spacing: (25mm, 8mm),
    entity((0, 0), "Recipe"),
    relation((1.5, 0), "variationOf"),
    edge("Recipe", "variationOf", label: [variation], bend: 45deg),
    edge("Recipe", "variationOf", label: [original], bend: -45deg),
  ),
  caption: [Recursive relationship type with roles.],
)

#figure(
  diagram(
    spacing: (12mm, 8mm),
    entity((0, 0), "Cook"),
    relation((1, 0), "creates"),
    entity((2, 0), "Recipe"),
    relation((3, 0), "uses"),
    entity((4, 0), "Ingredient"),
    edge("Cook", "creates", label: "1"),
    total("creates", "Recipe", label: "N"),
    total("Recipe", "uses", label: "N"),
    edge("uses", "Ingredient", label: "M"),
  ),
  caption: [Every recipe has exactly one cook and uses $>= 1$ ingredient (total); cooks
    and ingredients may exist unused (partial).],
)

#figure(
  diagram(
    spacing: (12mm, 8mm),
    entity((0, 0), "Customer"),
    relation((1, 0), "hires"),
    entity((2, 0), "Caterer"),
    entity((1, 1), "Event"),
    edge("Customer", "hires", label: "M"),
    edge("hires", "Caterer", label: "1"),
    edge("hires", "Event", label: "N"),
  ),
  caption: [Ternary relationship: a customer hires one caterer per event.],
)

== Weak Entity Types
- Cannot be identified on their own; depend on a _strong_ (owner) entity type via an
  _identifying relationship_.
- Notation: double-border rectangle and double-border diamond; always total
  participation.
- _Partial key_ (dashed underline) identifies it only together with the owner's key,
  e.g. Step = (RecipeID, StepNumber).

#figure(
  diagram(
    spacing: (10mm, 6mm),
    entity((0, 1), "Recipe"),
    key-attr((-0.5, 0), "RecipeID"),
    attr((0.5, 0), "Name"),
    ident-relation((1.3, 1), "has"),
    weak-entity((2.6, 1), "Step"),
    partial-key-attr((2.1, 0), "StepNumber"),
    attr((3.1, 0), "Instruction"),
    edge("Recipe", "RecipeID"),
    edge("Recipe", "Name"),
    edge("Recipe", "has", label: "1"),
    total("has", "Step", label: "N"),
    edge("Step", "StepNumber"),
    edge("Step", "Instruction"),
  ),
  caption: [Weak entity type Step identified through Recipe.],
)

== is-a Relationships
- Sub-types inherit all attributes of the super-type and add their own.
- Notation: hexagon below the super-type, sub-types connect to the hexagon.
- *Total* (double line, every super-type entity is in some sub-type) vs. *partial*.
- *Disjoint* (`d`, at most one sub-type) vs. *overlapping* (`o`, several possible).

#figure(
  diagram(
    spacing: (10mm, 8mm),
    entity((0, 0), "Ingredient"),
    isa((0, 1), [is-a #h(2pt) d], name: "isa"),
    entity((-1, 2), "Produce"),
    entity((1, 2), "Pantry"),
    attr((-1.6, 3), "ShelfLife"),
    attr((-0.6, 3), "Season"),
    attr((0.6, 3), "ExpiryDate"),
    attr((1.6, 3), "StorageTemp"),
    total("Ingredient", "isa"),
    edge("isa", "Produce"),
    edge("isa", "Pantry"),
    edge("Produce", "ShelfLife"),
    edge("Produce", "Season"),
    edge("Pantry", "ExpiryDate"),
    edge("Pantry", "StorageTemp"),
  ),
  caption: [Total, disjoint is-a: every ingredient is either Produce or Pantry.],
)

== Mapping to Relations
Notation: `relation(`#underline[PK]`, Attr, ..., FK -> other)`.

#table(
  columns: 2,
  stroke: .6pt,
  table.header([*ER element*], [*Becomes*]),
  [Entity type], [relation; PK stays PK],
  [Simple attribute], [attribute],
  [Composite attribute], [its sub-attributes (`FirstName, LastName`)],
  [Multi-valued attribute],
  [own relation with FK to owner, composite PK: `cuisineTag(RecipeID -> recipe, Tag)`],

  [Derived attribute], [dropped (computed on demand)],
  [1:N relationship], [FK on the N side: `recipe(..., CookID -> cook)`],
  [1:1 relationship], [FK on either side; merge relations if both total],
  [N:M or ternary+], [linking relation with FK to each side + rel. attributes],
  [Weak entity type],
  [relation with owner's PK as FK, PK = (owner PK, partial key):
    `step(RecipeID -> recipe, StepNumber, Instruction)`],

  [is-a], [one of three strategies (below)],
)

Participation decides whether the FK may be `NULL` (total -> `NOT NULL`).

=== is-a Strategies
#table(
  columns: 3,
  stroke: .6pt,
  table.header([*Strategy*], [*Pro*], [*Con*]),
  [(1) Super- + sub-type relations (sub-types: PK as FK + own attributes)],
  [clean, little duplication],
  [requires joins],

  [(2) Sub-type relations only (inherited attributes copied)],
  [simple sub-type queries],
  [duplication, tricky super-type queries],

  [(3) One big relation + `Type` attribute], [easiest queries], [many `NULL`s],
)

Choose by: similarity of sub-types, most common queries (all vs. per sub-type),
tolerance for `NULL`s.

// Problem 3.2
// #diagram(
//   entity((0, 0), "attachmentFile"),
//   attr((0, 1), "foo"),
// )

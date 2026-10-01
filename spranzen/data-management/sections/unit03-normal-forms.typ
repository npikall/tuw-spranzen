#set table(stroke: .6pt)

// table with a bold header row in monospace; `keys` are the header indices to
// underline (primary key columns)
#let data-table(header, keys: (), ..cells) = {
  set text(font: "JetBrains Mono", size: 8pt)
  table(
    columns: header.len(),
    table.header(
      ..header
        .enumerate()
        .map(((i, h)) => if i in keys [*#underline(h)*] else [*#h*]),
    ),
    ..cells,
  )
}

#let recipe-data = data-table(
  ("RecipeID", "Name", "PrepMinutes", "CookID", "CookName", "Country"),
  keys: (0,),
  [1],
  [Tiramisu],
  [30],
  [1],
  [Marcel],
  [Austria],
  [2],
  [Apfelstrudel],
  [90],
  [1],
  [Marcel],
  [Austria],
  [3],
  [Ratatouille],
  [60],
  [2],
  [Hugo],
  [France],
)

#let ingredient-data = data-table(
  (
    "IngredientID",
    "IngredientName",
    "Unit",
    "SupplierID",
    "SupplierName",
    "Phone",
  ),
  keys: (0,),
  [1],
  [Sugar],
  [g],
  [7],
  [Müller],
  [0660 1234],
  [2],
  [Flour],
  [g],
  [7],
  [Müller],
  [0660 1234],
  [3],
  [Cream],
  [ml],
  [8],
  [Alpenmilch],
  [0664 5678],
)

= Normal Forms

After requirements analysis, conceptual design (ER diagram) and logical design
(relations) we have a schema. Normal forms answer the question: _is the result any
good?_ The unit follows four steps:

+ *Spot the problem* -- anomalies (Motivation).
+ *Name the cause* -- functional dependencies.
+ *Grade the design* -- normal forms (1NF, 2NF, 3NF).
+ *Fix it* -- normalization, i.e. splitting tables safely.

== Motivation: Why Not One Big Table?

Putting the whole recipe app into one table looks convenient (one place to look):

#figure(
  recipe-data,
  caption: [_recipeData_ (RecipeID, Name, PrepMinutes, CookID, CookName, Country).],
)

The same fact (Marcel lives in Austria) is stored in several rows: *redundancy*.
Redundancy leads to three kinds of *anomalies*:

/ Update anomaly: a fact lives in many rows, so changing it means changing all of them.
  Marcel moves to Italy -- if we miss one row, the table contradicts itself (Italy in
  row 1, Austria in row 2).
/ Insert anomaly: a fact cannot be stored without an unrelated fact. Cook Anna joins but
  has no recipe yet. Every row needs a RecipeID (it is the key), so there is no place
  for Anna.
/ Delete anomaly: deleting one fact destroys another. Ratatouille is retired and its row
  deleted -- it was Hugo's only recipe, so Hugo disappears too.

The same happens in _ingredientData_: storing a new supplier Bauer with no ingredient is
an insert anomaly; deleting the Cream row also deletes the only record of supplier
Alpenmilch (delete anomaly).

#figure(
  ingredient-data,
  caption: [_ingredientData_ mixes ingredient and supplier
    facts.],
)

*The cause:* different information (facts about recipes _and_ facts about cooks) is
stored together instead of each having its own place. Anomalies are the symptoms of this
redundancy and lack of separation.

*The cure:* split the table so that each fact is stored once:

- _cook_ (#underline[CookID], CookName, Country)
- _recipe_ (#underline[RecipeID], Name, PrepMinutes, CookID -> _cook_)

Now Marcel's country is one row to update, Anna can be inserted without a recipe, and
Ratatouille can be deleted without losing Hugo. The split must however be done carefully
(see @sec-normalization).

== Functional Dependencies

A *functional dependency* (FD) says: _if I know this, I know that_. One value uniquely
determines another. If I know the zip code AT-1040, I know the town is Vienna -- and
only Vienna. If I know the CookID, I know the cook's name and country.

$ X -> Y $

/ Determinant: the attribute(s) $X$ on the left-hand side.
/ Dependent: the attribute(s) $Y$ on the right-hand side.

Read $"zipCode" -> "town"$ as "zipCode _determines_ town" or "town is _functionally
dependent_ on zipCode". Formally: any two rows that agree on $X$ must also agree on $Y$.
Both sides can consist of several columns.

Note the direction: $"IngredientID" -> "SupplierID"$ means each ingredient comes from
exactly one supplier. It does _not_ say that a supplier supplies only one ingredient.

In _recipeData_ we have, for example:
- $"RecipeID" -> "Name", "PrepMinutes", "CookID"$
- $"CookID" -> "CookName", "Country"$

=== Chained (Transitive) Dependencies
Dependencies chain: from $"RecipeID" -> "CookID"$ and $"CookID" -> "Country"$ follows
$ "RecipeID" -> "CookID" -> "Country" $
so knowing the recipe, you know its cook's country. Likewise in _ingredientData_,
$"IngredientID" -> "SupplierID"$ and $"SupplierID" -> "Phone"$ give
$"IngredientID" -> "Phone"$. Such detours through a non-key column are exactly what 3NF
forbids.

=== Meaning, Not Snapshot
FDs come from the real world, not from the current data. In _ingredientData_ all "g"
rows happen to have supplier Müller, but $"Unit" -> "SupplierName"$ does *not* hold: a
unit does not determine a supplier. Similarly, today's data would allow
$"Country" -> "CookName"$, but two cooks can share a country (add Marcel from France and
it breaks). *Decide dependencies by meaning, not by snapshot.*

=== Keys in Terms of Dependencies
A key determines every other column. $"RecipeID" ->$ all of _recipeData_, so it is a
key; CookID only determines the cook facts, so it is not.

/ Superkey: any set of columns that determines all other columns (trivially: the set of
  all columns).
/ Candidate key: a _minimal_ superkey -- it stops being a superkey if any column is
  removed.
/ Primary key: the candidate key we choose for a table.

Example: (IngredientID, SupplierID) determines every column of _ingredientData_, so it
is a superkey -- but not a candidate key, since IngredientID alone already determines
everything. From now on, *key* means candidate key.

/ Key attribute (prime): an attribute that is part of _some_ candidate key.
/ Non-key attribute: an attribute that is part of _no_ candidate key.

== Normal Forms

Normal forms are *grades* a table can earn. Each level outlaws one kind of mess, and
each higher form includes the requirements of the lower ones:
$ "3NF" subset "2NF" subset "1NF" $

A summary in one sentence: _every fact should depend on the key, the whole key, and
nothing but the key._

#figure(
  table(
    columns: 3,
    align: left,
    table.header([*Form*], [*Requirement*], [*Forbids*]),
    [1NF], [one value per cell], [lists / sets / repeating groups in a cell],
    [2NF],
    [1NF + non-key facts depend on the _whole_ key],
    [partial dependencies on part of a composite key],

    [3NF],
    [2NF + non-key facts depend on _nothing but_ the key],
    [transitive dependencies via a non-key column],
  ),
  caption: [The normal form ladder.],
)

=== First Normal Form (1NF): One Value per Cell
A table is in 1NF if every cell holds a single, atomic value. Multi-valued cells make
searching and linking data difficult (e.g. "which recipes use Sugar?" requires parsing
strings).

#figure(
  data-table(
    ("RecipeID", "RecipeName", "PrepMinutes", "Ingredients"),
    keys: (0,),
    [1],
    [Tiramisu],
    [45],
    [1. Cream (360.00ml), 2. Sugar (67.00g)],
    [2],
    [Apfelstrudel],
    [90],
    [2. Sugar (65.00g)],
    [3],
    [Apfelstrudel],
    [85],
    [3. Flour (360.00g)],
  ),
  caption: [Not in 1NF: the Ingredients cell holds a list.],
)

Since the forms are nested, a table violating 1NF satisfies _no_ normal form (e.g. a
_supplier_ table storing "Sugar, Flour" in one cell). Fix: one row per value, here one
row per (recipe, ingredient) pair:

#figure(
  data-table(
    (
      "RecipeID",
      "RecipeName",
      "PrepMinutes",
      "IngredientID",
      "IngredientName",
      "Quantity",
      "Unit",
    ),
    keys: (0, 3),
    [1],
    [Tiramisu],
    [45],
    [1],
    [Cream],
    [360.00],
    [ml],
    [1],
    [Tiramisu],
    [45],
    [2],
    [Sugar],
    [67.00],
    [g],
    [2],
    [Apfelstrudel],
    [90],
    [2],
    [Sugar],
    [65.00],
    [g],
    [3],
    [Apfelstrudel],
    [85],
    [3],
    [Flour],
    [360.00],
    [g],
  ),
  caption: [In 1NF, but not in 2NF.],
) <tab-1nf>

=== Second Normal Form (2NF): The Whole Key
A table is in 2NF if it is in 1NF and *every non-key attribute depends on every
candidate key as a whole*, never on just a part of one. A dependency on part of a key is
called a *partial dependency*.

In @tab-1nf the candidate keys are (RecipeID, IngredientID) and (RecipeID,
IngredientName). But
- $"IngredientID" -> "Unit"$ and $"IngredientName" -> "Unit"$ -- Unit needs only part of
  the key,
- $"RecipeID" -> "RecipeName", "PrepMinutes"$ -- again only part of the key.

Only Quantity truly needs the whole key. The partial dependencies cause redundancy
(Tiramisu's PrepMinutes and Sugar's unit are repeated) and anomalies in the making.

*Important:* 2NF can only be violated if there is a _composite_ key. If every candidate
key is a single column, there is no "part" of a key to depend on, so the table is
automatically in 2NF (given 1NF). This is why _ingredientData_ is in 2NF despite its
problems.

=== Third Normal Form (3NF): Nothing but the Key
A table is in 3NF if it is in 2NF and *no non-key attribute depends on another non-key
attribute*, i.e. there are no *transitive dependencies* $"key" -> A -> B$ where $A$ is
not a key.

More precisely: for every non-trivial FD $X -> Y$ in the table, either $X$ is a
superkey, or every attribute of $Y$ is a key attribute.

_recipeData_ has the single-column key RecipeID, so it is in 2NF. But
$ "RecipeID" -> "CookID" -> "CookName", "Country" $
CookName and Country hang off CookID, which is not a key -- 3NF is violated. In
_ingredientData_ the offending dependency is $"SupplierID" -> "SupplierName", "Phone"$
(SupplierID is not a key there).

=== Summary: The Key, the Whole Key, Nothing but the Key
- *1NF* -- one value per cell (_the key_: rows are identifiable by atomic values).
- *2NF* -- facts depend on _the whole key_ (no partial dependencies).
- *3NF* -- facts depend on _nothing but the key_ (no transitive dependencies).

Normal forms catch chained and non-key dependencies that breed redundancy and anomalies.
Ad-hoc splits help, but give no guarantees -- normalization does.

== Normalization: Splitting Safely <sec-normalization>

The normalization process:
+ *Bring to 1NF* -- one value per cell.
+ *Perform a split* -- cut at a violated dependency $X -> Y$:
  - the columns $X union Y$ become a new table with key $X$,
  - $Y$ is removed from the original table, $X$ *remains* there as a foreign key linking
    to the new table,
  - repeat until 2NF/3NF is reached.
+ *Do safety checks* -- nothing lost, every dependency in one table.

Example: cutting _ingredientData_ at $"SupplierID" -> "SupplierName", "Phone"$ gives

- _supplier_ (#underline[SupplierID], SupplierName, Phone)
- _ingredient_ (#underline[IngredientID], IngredientName, Unit, SupplierID ->
  _supplier_)

SupplierID stays in _ingredient_ so we still know which supplier delivers each
ingredient. Dropping it would lose that information.

=== Good vs. Bad Split
For _recipeData_ (RecipeID, Name, PrepMinutes, CookID, CookName, Country):

#grid(
  columns: (1fr, 1fr),
  gutter: 1em,
  [*Good split* ✓
    - _cook_ (#underline[CookID], CookName, Country)
    - _recipe_ (#underline[RecipeID], Name, PrepMinutes, CookID -> _cook_)
  ],
  [*Bad split* ✗
    - _cook_ (#underline[CookID], CookName, Country)
    - _recipeInfo_ (#underline[RecipeID], Name, PrepMinutes)

    No shared column -- which cook made which recipe is lost.
  ],
)

=== Test 1: Nothing Lost (Lossless Join)
Joining the pieces back together must give *exactly* the original table -- no rows lost
and no rows invented.

*Shortcut:* the split is safe if the shared column(s) form a key of (at least) one of
the resulting tables. CookID is the key of _cook_, so every recipe row joins with
exactly one cook: safe.

A bad split *invents facts*. Splitting into (RecipeID, Name, Country) and (CookName,
Country) shares only Country, which is a key of neither table. The join pairs every cook
with every dish of that country:

#figure(
  grid(
    columns: 3,
    gutter: 1em,
    data-table(
      ("RecipeID", "Name", "Country"),
      [3],
      [Ratatouille],
      [France],
      [4],
      [Quiche],
      [France],
    ),
    data-table(
      ("CookName", "Country"),
      [Hugo],
      [France],
      [Anna],
      [France],
    ),
    data-table(
      ("Name", "Country", "CookName"),
      [Ratatouille],
      [France],
      [Hugo],
      [Ratatouille],
      [France],
      [Anna],
      [Quiche],
      [France],
      [Hugo],
      [Quiche],
      [France],
      [Anna],
    ),
  ),
  caption: [Joining on a non-key column: 4 rows, 2 of them invented.],
)

Likewise, splitting _supplyData_ (Sugar/g/Müller, Butter/g/Huber, Cream/ml/Alpenmilch)
into (IngredientName, Unit) and (Unit, SupplierName) and joining on Unit gives 5 rows:
$2 times 2$ for "g" plus 1 for "ml" -- 2 of them invented.

=== Test 2: Every Dependency in One Table (Dependency Preservation)
Each functional dependency should live entirely inside one table:
- $"CookID" -> "CookName", "Country"$ -- inside _cook_,
- $"RecipeID" -> "Name", "PrepMinutes", "CookID"$ -- inside _recipe_.

Then the database can enforce it cheaply (as a key constraint) within one table. A
dependency split across tables could only be checked with an expensive join.

=== We Have Been Here Before
Normalizing the whole recipe app yields the schema from the ER lecture:

- _cook_ (#underline[CookID], CookName, Country)
- _recipe_ (#underline[RecipeID], Name, PrepMinutes, CookID -> _cook_)
- _ingredient_ (#underline[IngredientID], Name, Unit)
- _uses_ (#underline[RecipeID -> _recipe_, IngredientID -> _ingredient_], Quantity)

A careful ER design usually lands in 3NF already. Normal forms are the safety check
behind the method.

== Summary

#figure(
  table(
    columns: 4,
    align: left,
    table.header(
      [*Spot the problem*], [*Name the cause*], [*Grade the design*], [*Fix it*]
    ),
    [Anomalies \ Redundancy],
    [Functional dependencies],
    [1NF \ 2NF \ 3NF],
    [Bring to 1NF \ Split \ Safety checks],
  ),
)

== Quiz Recap
#{
  set text(size: 9pt)
  table(
    columns: (auto, 1fr, auto),
    align: left,
    table.header([*Q*], [*Question*], [*Answer*]),
    [1], [Storing supplier Bauer without an ingredient?], [insert anomaly],
    [2], [Which delete in _ingredientData_ hurts?], [Cream (loses Alpenmilch)],
    [3], [Common cause of the anomalies?], [mixes facts about two things],
    [4],
    [$"IngredientID" -> "SupplierID"$ means?],
    [one supplier per ingredient],

    [5],
    [Follows from $"IngredientID" -> "SupplierID" -> "Phone"$?],
    [$"IngredientID" -> "Phone"$],

    [6],
    [All "g" rows have Müller: $"Unit" -> "SupplierName"$?],
    [no -- meaning, not snapshot],

    [7],
    [Why is (IngredientID, SupplierID) no candidate key?],
    [IngredientID alone suffices],

    [8], [Table with "Sugar, Flour" in one cell is in?], [no normal form],
    [9], [Can a table with only one-column keys break 2NF?], [no],
    [10],
    [Which FD keeps _ingredientData_ out of 3NF?],
    [$"SupplierID" -> "SupplierName", "Phone"$],

    [11], [Why does SupplierID stay in _ingredient_?], [to keep the link],
    [12], [Joining a bad split on Unit gives?], [5 rows, 2 invented],
    [13], [Why every FD inside one table?], [cheap checking],
  )
}

=== Problem 3.2 (Split the Table)

- guide(GuideID, GuideName, GuideBirthday)
- coach(LicensePlate, CoachType)
- trip((TripID,) Title, StartDate, EndDate)
- trips(trip(TripID), guide(GuideID), coach(LicensePlate))

#import "@preview/codly:2.0.0" as codly
#import "@preview/codly-languages:0.1.8": codly-languages
#show: codly.lang-set_(languages: codly-languages)
#show: codly.theme("one-light")
#show raw.where(block: true): codly.new
#set table(stroke: .6pt)

= Non-relational Data Structures

== Motivation: Limits of Relational Databases

Not all data fits well into tables. Two typical cases:

*Knowledge about entities* (e.g. Wikidata entries for Marie Curie, Hedy Lamarr, Vienna):

- Varying properties per entity -> lots of mostly `NULL` columns.
- Multivalued properties (several occupations, citizenships, spouses).
- Many links between entities, properties shared between entities.
- -> *Linked Open Data* (graphs, RDF).

*Large numerical data* (e.g. hourly temperature at 2m over Europe for one week: ≈ 28,000
grid points $times 168$ hours $approx 4.8$ million rows):

- Billions of rows, `INSERT` alone can take days.
- Spatial slicing and aggregation are costly.
- No native support for $n$-dimensional operations, unsuitable I/O patterns.
- -> *Data cubes / hierarchical data formats*: dense, labelled $n$-dimensional arrays with
  chunking, parallel I/O, fast array operations and embedded coordinate metadata.

== Linked Open Data

- *World Wide Web:* links documents for human users; dispersed, heterogeneous, inconsistent
  vocabularies (a problem for machines, not humans).
- *Semantic Web:* adds machine-readable content -> search and task automation.
- *Linked Data:* extends the web's linking idea to data -> web of data, data reuse.

== RDF: Resource Description Framework

W3C standard (since 1999) to represent facts in machine-readable form and to exchange
(directed) graph data. Simple uniform data model, flexible schema, easy data integration,
reasoning possible.

- *Resource:* can be anything (people, places, today's temperature, ...).
- Every fact is broken down into *triples* -- the smallest complete statements:

$ ("subject", "predicate", "object") $

/ Subject: a resource.
/ Predicate: a property (relationship or attribute).
/ Object: a resource or a literal.

=== URIs

Plain strings are ambiguous: _"Curie won a Nobel Prize"_ -- which Curie? Which prize? Does
"won" mean the currency? -> Every resource gets a unique identifier, a *URI* (Uniform
Resource Identifier), which can be dereferenced (looked up).

Syntax: `[scheme]://[authority][path]?[query]#[fragment]`

#figure(
  table(
    columns: 2,
    align: left,
    table.header([*Term*], [*URI*]),
    ["Curie"], [`http://dbpedia.org/resource/Marie_Curie`],
    ["won"], [`http://dbpedia.org/ontology/award`],
    ["Nobel Prize"], [`http://dbpedia.org/resource/Nobel_Prize_in_Physics`],
  ),
  caption: [Strings replaced by URIs.],
)

=== Literals

- Occur *only in the object* position.
- Interpreted by a datatype (a URI, usually XML Schema: `xsd:integer`, `xsd:string`, with
  `xsd:` $=$ `http://www.w3.org/2001/XMLSchema#`). Without datatype -> `xsd:string`.
- Untyped literals can have *language tags*: `"Faculty of Informatics"@en`,
  `"Fakultät für Informatik"@de`.
- Typed literal: `"2004"^^xsd:integer`.

== RDF Serialisations

A serialisation translates the (visual) graph into text, so it can be streamed to
programs. Formats: N-Triples, Turtle, RDF/XML, JSON-LD.

*N-Triples:* simplest form. Full URIs in angle brackets, each triple ends with `.`

```turtle
<http://dbpedia.org/resource/Marie_Curie> <http://dbpedia.org/ontology/award> <http://dbpedia.org/resource/Nobel_Prize_in_Physics> .
```

*Turtle:* human-readable, introduces `@prefix` shortcuts for namespaces.

```turtle
@prefix dbr: <http://dbpedia.org/resource/> .
@prefix dbo: <http://dbpedia.org/ontology/> .

dbr:Marie_Curie dbo:award dbr:Nobel_Prize_in_Physics .
```

- `;` lists further predicates for the *same subject*.
- `,` lists further objects for the *same subject and predicate*.

```turtle
@prefix p: <http://dbpedia.org/property/> .
@prefix ex: <http://example.org/> .
@prefix dbpedia: <http://dbpedia.org/resource/> .
@prefix xsd: <http://www.w3.org/2001/XMLSchema#> .

ex:TU_Wien_Informatics p:has_institute ex:Data_Science ;
    p:location dbpedia:Vienna, dbpedia:Austria ;
    p:name "Faculty of Informatics"@en ;
    p:start_year "2004"^^xsd:integer .
```

Common prefixes: `xsd`, `rdf`, `rdfs`, `foaf`, `dct`, `schema`, `dbpedia`.

*RDF/XML:* the original W3C recommendation, fits web infrastructure built on HTML/XML.

```xml
<rdf:Description rdf:about="ex:TU_Wien_Informatics">
  <p:has_institute rdf:resource="ex:Data_Science"/>
  <p:location rdf:resource="dbpedia:Vienna"/>
  <p:name xml:lang="en">Faculty of Informatics</p:name>
</rdf:Description>
```

*JSON-LD:* JSON for Linked Data. Maps JSON keys to RDF resources via `@context`; a valid
JSON file with fast parsers (esp. in browsers).

```json
{
  "@context": { "ex": "http://example.org/", "p": "http://dbpedia.org/property/" },
  "@id": "ex:TU_Wien_Informatics",
  "p:has_institute": { "@id": "ex:Data_Science" },
  "p:name": { "@language": "en", "@value": "Faculty of Informatics" }
}
```

== Linked Open Data Principles

Publish structured data on the web with standards like RDF and link it to other data sets.
Tim Berners-Lee's *5-star scheme*:

#figure(
  table(
    columns: 2,
    align: left,
    table.header([*Stars*], [*Requirement*]),
    [★], [available on the web (any format) with an open license],
    [★★], [machine-readable structured data (Excel instead of a scanned table)],
    [★★★], [non-proprietary format (CSV instead of Excel)],
    [★★★★], [W3C open standards (RDF, SPARQL), URIs to identify things],
    [★★★★★], [links to other people's data to provide context],
  ),
  caption: [5-star Linked Open Data.],
)

- Use (HTTP) URIs as names so people can look them up.
- Provide useful information (RDF) when a URI is looked up.
- Include links to other URIs.
- Workflow: model data as RDF with suitable vocabularies -> create URIs -> serialise and
  offer a SPARQL endpoint.

== SPARQL

*SPARQL Protocol and RDF Query Language* (W3C; 1.0 2008, 1.1 2013 with updates/deletes,
1.2 2024). Queries RDF stored in *triple stores* (GraphDB, Virtuoso, Apache Jena, ...).

- Syntax is based on Turtle.
- Main idea: *basic graph pattern matching*. A *triple pattern* is a triple with variables
  (prefixed by `?`); sub-graphs of the data matching the pattern yield results.

```sparql
dbpedia:The_Beatles foaf:made ?album .
?album mo:track ?track .
?s ?p ?o .     # matches every triple
```

=== Query Structure

```sparql
PREFIX dbpedia: <http://dbpedia.org/resource/>   # prefix declarations
PREFIX foaf: <http://xmlns.com/foaf/0.1/>
PREFIX dc: <http://purl.org/dc/elements/1.1/>

SELECT ?album ?title                             # result clause
FROM <http://musicbrainz.org/20130302>           # dataset (optional)
WHERE {                                          # query pattern
  dbpedia:The_Beatles foaf:made ?album .
  ?album dc:title ?title .
}
ORDER BY ?title                                  # solution modifiers
```

- *Dataset:* `FROM` / `FROM NAMED`, optional -- the graphs to match against.
- *Query pattern:* one or more triple patterns in `{ }`; shared variables join them. The
  final `.` is optional.
- *Solution modifiers:* `ORDER BY`, `LIMIT`, `OFFSET`, `GROUP BY` (only for `SELECT`).

#figure(
  table(
    columns: 2,
    align: left,
    table.header([*Query form*], [*Returns*]),
    [`SELECT`], [variables and their bindings as a table],
    [`ASK`], [`true` / `false` -- does the pattern have a solution?],
    [`DESCRIBE`], [an RDF graph with data about a resource],
    [`CONSTRUCT`], [an RDF graph built from a graph template],
  ),
  caption: [SPARQL query forms.],
)

Try it at the public endpoint `https://dbpedia.org/sparql`.

== Ontologies

RDF encodes facts, but sometimes more expressive knowledge is needed (_a person has
exactly one birth date_, _a course needs 6+ students_). Ontologies enforce such
constraints.

#quote(block: true)[
  An ontology is a *formal, explicit specification of a shared conceptualization*.
]

- *Formal:* machine-readable. *Shared:* agreed by a community. *Conceptualization:*
  abstract model of a part of the world (concepts, properties, functions, axioms).
- Uses: represent a domain, automatic processing, integrate heterogeneous data, *deduce
  implicit information* from existing information.

=== Ontology Spectrum

Ordered by increasing expressivity, from lightweight to heavyweight:

/ Controlled vocabulary: finite list of terms (e.g. a catalogue).
/ Glossary: terms + informal natural-language definitions.
/ Thesaurus: controlled vocabulary with relations -- synonyms, hierarchies, homonyms,
  associations. Example: FOAF (Friend of a Friend).
/ Taxonomy: hierarchy of classes (IS-A). _Informal IS-A_: subclass relations not strict
  (library index). _Formal IS-A_: strict. _Formal instance_: strict + instance-of.
/ Ontology (heavyweight): taxonomy + further relations and constraints (frames, value
  restrictions, disjointness, inverse relations, part-of, ...). Focus on logic and
  consistent, formally correct inferences.

=== Taxonomy and Ontology Concepts

- *Concept / class:* the set of all entities of that type,
  e.g. $"Animal" = {"Cow", "Dog", ...}$.
- *Subsumption (IS-A):* from specific to generic, $"Herbivore" subset.eq "Animal"$.
- *Siblings* share a parent concept (Herbivore, Carnivore, Omnivore).
- An ontology adds e.g. *disjointness* ($"Animal" perp "Plant"$), relations like
  `eats`, `hasMember`, *inverse* relations (`hasMember` / `atDepartment`) and *symmetric*
  relations (`hasColleague`).

Two spaces:

- *Terminological space:* concepts and relations (`Carnivore eats Animal`).
- *Instance space:* concrete entities, typed by *instance-of*
  (Tom instance-of Carnivore, Jerry instance-of Animal, Tom eats Jerry).

In practice the terminological space is serialised in RDF with *OWL* (Web Ontology
Language), which provides cardinalities, types and other constraints and combines easily
with FOAF, SKOS, etc.

== Hierarchical Data Formats

Open file formats for large, complex, heterogeneous data:

- *A file system in one file:* groups like directories, datasets like files.
- *Self-describing:* every group/dataset can carry metadata (site name, coordinates,
  sensor description). Metadata is *not* a separate file.

#figure(
  table(
    columns: 2,
    align: left,
    table.header([*Format*], [*Use*]),
    [HDF5], [(de-facto) standard in science],
    [NetCDF4], [built on HDF5, mostly geosciences],
    [Zarr], [optimised for cloud storage],
    [JSON / XML / YAML], [text-based hierarchical formats, small data only],
  ),
  caption: [Hierarchical data formats.],
)

== HDF5

General-purpose container for large hierarchical data (The HDF Group). Two primary
objects:

/ Group: structure, contains 0 or more objects + metadata. Every file has a root group
  `/`; paths work like UNIX directories (`/Viz/Figure1`).
/ Dataset: the actual data, a rectangular $n$-dimensional array stored inside a group.

Supporting objects:

/ Datatype: atomic or compound; all elements of a dataset share the same type, immutable.
/ Dataspace: shape, set at creation; maximum size can be unlimited.
/ Property: feature of an object -- permanent (chunk size) or transient (transfer buffer
  size).
/ Attribute: optional small (name, value) pair attached to an object -- metadata that
  documents it.

Tools: C/C++/Fortran API (parallel HDF5 with MPI), Python (`h5py`, PyTables), R, MATLAB,
Julia, Java; HSDS for REST access. Workflow: open file -> navigate groups/datasets -> read
datasets/attributes (chunked for large arrays) -> close.

```python
import h5py

with h5py.File("data.h5", "r") as f:
    temp = f["/site-1/sensor/temperature"]
    print(temp.attrs["units"], temp[0:10])
```

== NetCDF

*Network Common Data Form* (Unidata/UCAR, since 1988): compact, self-describing,
multi-dimensional, platform-independent open standard for gridded data (climate, weather,
oceanography). Like HDF5 but more restricted -- netCDF-4 files *are* HDF5 files with netCDF
conventions.

A netCDF file contains:

/ Dimension: name + size (positive integer or `UNLIMITED`), e.g. `time`, `lat`, `lon`.
/ Variable: the data -- name, data type, shape given by dimensions (e.g.
  `temperature(time, lat, lon)`), may have attributes.
/ Coordinate variable: 1-D variable with the same name as a dimension (`lat(lat)`); helps
  locate data (_temperature at latitude 20_).
/ Attribute: metadata of a variable (`units = "Celsius"`), or global for the whole file.

```
netcdf examplecdf {
dimensions:
    x = 4;
    y = 4;
    time = UNLIMITED;
variables:
    float x(x);
    float y(y);
    int time(time);
    float temperature(time, x, y);
data:
    x = 10, 20, 30, 40;
    y = 110, 120, 130, 140;
    time = 31, 59, 90;
    temperature = 111, 211, 311, ...;
}
```

Tools: command line (`ncdump`, `nccopy`, `cdo`), C/Fortran, Python (`netCDF4`, `xarray`),
R, MATLAB; graphical: Panoply, QGIS.

== Summary

#figure(
  table(
    columns: 2,
    align: left,
    table.header([*Format*], [*Characteristics*]),
    [HDF5],
    [hierarchical binary container (groups, datasets, attributes); flexible for complex
      layouts; a single monolithic file can be awkward],

    [NetCDF],
    [array-focused model for multi-dimensional science data; netCDF-4 stores in HDF5;
      enforces dimensions/variables/attributes; CF conventions in Earth science],

    [Zarr],
    [compatible with HDF5 and NetCDF; cloud-native; `xarray` as high-level Python interface],
  ),
  caption: [Comparison of hierarchical data formats.],
)

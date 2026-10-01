#set table(stroke: .6pt)
= Relational Model

== Terminology

/ Relation: usually a table. (e.g. A table containing Student data would be called
  _students_.)
/ Attribute: a column of a table (e.g. firstName, lastName)
/ Tuples: a row of data in a table
/ Primary Key: an attribute (or a minimal set of attributes) whose value uniquely
  identifies each tuple of a relation. It must be unique and must not be empty (`NULL`).
  In schemas it is usually marked by underlining (e.g. #underline[matrNr] in
  _students_).
/ Foreign Key: an attribute (or set of attributes) in one relation that refers to the
  primary key of another (or the same) relation. Its values must either match an
  existing primary key value in the referenced relation or be `NULL` (_referential
  integrity_). Foreign keys link relations together (e.g. matrNr in _exams_ refers to
  matrNr in _students_). In schemas it is often marked by a dashed underline.


#figure(
  {
    set text(font: "JetBrains Mono")
    table(
      columns: 4,
      table.header(
        [*#underline[matrNr]*], [*firstName*], [*lastName*], [*semester*]
      ),
      [12345678], [Anna], [Huber], [3],
      [12345679], [Ben], [Gruber], [1],
      [12345680], [Clara], [Wagner], [5],
    )
  },
  caption: [Relation _students_. Each column header is an attribute, each row a tuple.
    The primary key #underline[matrNr] is underlined.],
)

#figure(
  {
    set text(font: "JetBrains Mono")
    table(
      columns: 4,
      stroke: .6pt,
      table.header(
        [*#underline[examId]*],
        [*#underline(stroke: (dash: "dashed"))[matrNr]*],
        [*course*],
        [*grade*],
      ),
      [1], [12345678], [Databases], [1],
      [2], [12345678], [Statistics], [2],
      [3], [12345680], [Databases], [3],
    )
  },
  caption: [Relation _exams_. The foreign key matrNr (dashed underline) refers to the
    primary key matrNr of _students_, linking each exam to a student.],
)

== Relational Algebra - Operations
- Selection $sigma$ -> filter tuples
- Projection $pi$ -> pick attributes
- Join $bowtie$ -> combine relations

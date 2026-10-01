#import "@preview/codly:2.0.0" as codly
#import "@preview/codly-languages:0.1.8": codly-languages
#show: codly.lang-set_(languages: codly-languages)
#show: codly.theme("one-light")
#show raw.where(block: true): codly.new
#set table(stroke: .6pt)

= Basic SQL

SQL is *declarative*: you say _what_ you want, not _how_ it should be produced.

/ DDL: Data Definition Language -- design the structure.
/ DML: Data Manipulation Language -- fill it with data.
/ DQL: Data Query Language -- ask questions.
/ DCL: Data Control Language -- say who may do what.
/ TCL: Transaction Control Language -- bundle steps safely.

== Tables and Data Types

- *Relation:* set of tuples -- no duplicates, no order, key required.
- *SQL table:* bag of rows -- duplicates allowed, ordering possible, key optional.
- Attribute -> column, tuple -> row. Every column has a data type.

#figure(
  table(
    columns: 3,
    align: left,
    table.header([*Type*], [*Stores*], [*Example*]),
    [`VARCHAR(n)`], [text, up to $n$ characters], [`'Marcel'`],
    [`CHAR(n)`], [text, exactly $n$ characters], [`'AT'`],
    [`BOOL`], [0 and 1 (false and true)], [`0`],
    [`INTEGER`], [whole numbers], [`45`],
    [`NUMERIC(p,s)`], [fixed-point, precision $p$, scale $s$], [`0.25`],
    [`FLOAT(p)`], [floating-point, precision $p$], [`345.6667`],
    [`DATE`], [`YYYY-MM-DD`], [`2026-07-05`],
    [`TIME`], [`HH:MI:SS`], [`16:25:20`],
    [`DATETIME`], [date and time combined], [`2026-07-05 16:25:20`],
  ),
  caption: [Common SQL data types.],
)

== DDL: Defining Tables

`CREATE TABLE` defines the empty structure only -- it does not add any rows.

```sql
CREATE TABLE uses(
    RecipeID INTEGER,
    IngredientID INTEGER,
    Quantity NUMERIC(5,2),
    PRIMARY KEY(RecipeID, IngredientID),
    FOREIGN KEY(RecipeID) REFERENCES recipe(RecipeID),
    FOREIGN KEY(IngredientID) REFERENCES ingredient(IngredientID)
);
```

- `PRIMARY KEY`: inline for a single column (`RecipeID INTEGER PRIMARY KEY`), or as a
  separate line (required for composite keys).
- `NOT NULL`: value is required.
- `UNIQUE`: no two rows share the value.
- `DEFAULT x`: used when no value is given (`PrepMinutes INTEGER DEFAULT 10`).
- `FOREIGN KEY ... REFERENCES`: value must exist in the other table. May also point to a
  `UNIQUE` column, but primary keys are preferred. Short form in the column line:
  `RecipeName VARCHAR(10) REFERENCES recipe(Name)`.

== DDL: Changing Tables

`ALTER TABLE` changes the structure while the data survives.

```sql
ALTER TABLE recipe ALTER COLUMN Name TYPE VARCHAR(30);
ALTER TABLE recipe ADD COLUMN Difficulty VARCHAR(20);
ALTER TABLE recipe ALTER COLUMN Difficulty SET DEFAULT 'Intermediate';
ALTER TABLE recipe DROP COLUMN Difficulty;
```

- `ADD COLUMN`: existing rows get null (or the `DEFAULT`).
- `DROP COLUMN`: also removes the column's values.

```sql
CREATE SEQUENCE recipe_ids START 1;
ALTER TABLE recipe ALTER COLUMN RecipeID SET DEFAULT nextval('recipe_ids');

CREATE TABLE recipe_backup AS (SELECT * FROM recipe);
DROP TABLE recipe_backup;
TRUNCATE TABLE recipe;
```

- `SEQUENCE`: counter that hands out the next ID automatically.
- `CREATE TABLE AS`: copies structure and contents, e.g. before risky changes.
- `DROP TABLE`: the table is gone.
- `TRUNCATE TABLE`: the rows are gone, the table stays.
- Foreign keys guard both: `recipe` cannot be dropped or truncated while `uses` points
  at it.

== DML: Managing Data

DML changes contents, not structure.

```sql
INSERT INTO recipe VALUES (1, 'Tiramisu', 45), (2, 'Apfelstrudel', 90);
INSERT INTO recipe (RecipeID, Name) VALUES (4, 'Greek Salad');

UPDATE recipe SET PrepMinutes = PrepMinutes - 15 WHERE Name = 'Apfelstrudel';

DELETE FROM recipe WHERE PrepMinutes >= 60;
```

- `INSERT`: values follow the table's column order, or the order of a named column list.
  Omitted columns get null or the `DEFAULT`. Strings need `'quotes'`.
- `UPDATE ... SET`: changes stored values; can use the old value.
- `DELETE FROM`: removes rows, the table stays.
- `WHERE` picks the rows. *Without `WHERE`, every row is updated or deleted!*

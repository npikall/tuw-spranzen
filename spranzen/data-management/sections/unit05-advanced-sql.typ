#import "@preview/codly:2.0.0" as codly
#import "@preview/codly-languages:0.1.8": codly-languages
#show: codly.lang-set_(languages: codly-languages)
#show: codly.theme("one-light")
#show raw.where(block: true): codly.new
#set table(stroke: .6pt)

= Advanced SQL

This unit covers the remaining command groups: *DQL* (querying), *DCL* (access rights) and
*TCL* (transactions).

#figure(
  table(
    columns: 5,
    align: left,
    table.header([*DDL*], [*DML*], [*DQL*], [*DCL*], [*TCL*]),
    [`CREATE`], [`INSERT`], [`SELECT`], [`GRANT`], [`BEGIN`],
    [`ALTER`], [`UPDATE`], [], [`REVOKE`], [`COMMIT`],
    [`DROP`], [`DELETE`], [], [], [`ROLLBACK`],
    [`TRUNCATE`], [], [], [], [],
  ),
  caption: [SQL commands by group.],
)

== DQL: The Shape of a Query

Every query follows the same pattern, which maps onto relational algebra:

```sql
SELECT <columns>      -- projection π (+ arithmetic, aggregation)
FROM <tables>         -- the involved tables
WHERE <condition>;    -- selection σ and join conditions ⋈
```

```sql
SELECT * FROM recipe;                -- all columns, all rows
SELECT Name, PrepMinutes FROM recipe; -- only these columns (projection)
SELECT DISTINCT Unit FROM ingredient; -- each value only once
```

- `*`: all columns. No `WHERE` -> all rows.
- `DISTINCT`: tables are bags, so duplicates happen -- `DISTINCT` keeps each row once.

== DQL: Filtering and Sorting

```sql
SELECT Name
FROM recipe
WHERE Name LIKE 'A%' AND PrepMinutes BETWEEN 60 AND 120
ORDER BY Name;
```

- *Comparison:* `=`, `<>`, `<`, `>`, `<=`, `>=`.
- *Logical:* `AND`, `OR`, `NOT`. `AND` binds stronger than `OR` -- use parentheses:
  `WHERE (HallNo = 1 OR HallNo = 2) AND PurchaseDate >= '2021-01-01'`.
- *Ranges:* `x BETWEEN a AND b` means $a <= x <= b$ (both ends included).
- *Patterns:* `LIKE` with wildcards `%` (any text, also empty) and `_` (exactly one
  character). `'%Robot%'` finds "Robot" anywhere in the text.
- `ORDER BY`: SQL does not sort unless told. `ASC` is the default, `DESC` reverses.
  Several keys are possible: `ORDER BY TechID, Cost DESC` sorts by `TechID`, then within
  each technician by `Cost` descending.

== DQL: Joins

Answers often span several tables, e.g. _which ingredients does Tiramisu use?_ -- the
name is in `recipe`, the quantity in `uses`, the ingredient name in `ingredient`.

- Relational algebra $r bowtie.big u$ merges the common column into one.
- An SQL join keeps *both* columns (`recipe.RecipeID` and `uses.RecipeID`).
- *Dot notation* `table.column` is required when a column name occurs in more than one
  table.

```sql
-- implicit: join condition in WHERE
SELECT Name, Quantity
FROM recipe, uses
WHERE recipe.RecipeID = uses.RecipeID;

-- explicit: JOIN ... ON (same result, clearer intent)
SELECT Name, Quantity
FROM recipe JOIN uses ON recipe.RecipeID = uses.RecipeID;
```

*Aliases* give tables short names, and joins can be *chained* -- one more `JOIN`, one more
`ON`:

```sql
SELECT i.Name, u.Quantity
FROM recipe r
  JOIN uses u ON r.RecipeID = u.RecipeID
  JOIN ingredient i ON u.IngredientID = i.IngredientID
WHERE r.Name = 'Tiramisu';
```

- Ambiguous names (`Name` exists in `recipe` and `ingredient`) must be prefixed: `i.Name`.
- Without `ON`, every row is paired with every row (cartesian product, e.g.
  $9 times 4 = 36$ rows).
- `JOIN` only keeps rows with a match: rows with `NULL` in the foreign key, or rows not
  referenced at all, are *dropped*.

== DQL: Aggregation

Aggregate functions compute one value from many rows (those matching the condition):

/ `COUNT`: number of rows (`COUNT(*)`).
/ `SUM`: sum of numeric values.
/ `AVG`: average of numeric values.
/ `MIN`, `MAX`: lowest and highest value.

```sql
SELECT COUNT(*), SUM(u.Quantity)
FROM recipe r JOIN uses u ON r.RecipeID = u.RecipeID
WHERE r.Name = 'Tiramisu';
```

== DQL: GROUP BY and HAVING

`GROUP BY` splits the rows into groups; aggregates are then computed *per group*.

```sql
SELECT r.RecipeID, r.Name, COUNT(*), SUM(u.Quantity)
FROM recipe r JOIN uses u ON r.RecipeID = u.RecipeID
GROUP BY r.RecipeID, r.Name
HAVING COUNT(*) >= 2;
```

- Every non-aggregated column in `SELECT` must appear in `GROUP BY`.
- Group by the *key* (`RecipeID`, `TechID`), not only by a name -- two technicians
  named Bauer would otherwise be merged into one group.
- `WHERE` filters *rows, before* grouping. `HAVING` filters *groups, after* they are formed.
  A condition on an aggregate (`SUM(Cost) > 250`) belongs into `HAVING`.

#figure(
  table(
    columns: 2,
    align: left,
    table.header([*Clause*], [*Role*]),
    [`FROM` + `JOIN ... ON`], [collect and combine the tables],
    [`WHERE`], [filter rows],
    [`GROUP BY`], [form groups],
    [`HAVING`], [filter groups],
    [`SELECT`], [pick columns, compute aggregates],
    [`DISTINCT`], [drop duplicates],
    [`ORDER BY`], [sort the result],
  ),
  caption: [Query clauses in logical evaluation order.],
)

== DCL: Access Rights

Users get exactly the rights they need. The privileges mirror the commands: `SELECT`
(read), `INSERT` (add), `UPDATE` (change), `DELETE` (remove), or `ALL`.

```sql
GRANT SELECT ON recipe TO GuestUser;
GRANT SELECT, INSERT ON recipe TO Hugo, Anna;
GRANT UPDATE(PrepMinutes) ON recipe TO Hugo, Anna;  -- single column only

REVOKE ALL ON recipe FROM Hugo;
REVOKE INSERT, UPDATE, DELETE ON recipe FROM Robin;
```

- `GRANT <privileges> ON <table> TO <users>`.
- `REVOKE` is the mirror image: `FROM` instead of `TO`.
- Rights can be given per user, per table, and per column.

== TCL: Transactions

Commands that belong together form a *transaction* -- *all or nothing*. Example: swapping
sugar for honey needs three commands; a crash in between would leave sugar gone and honey
missing.

```sql
BEGIN;
INSERT INTO ingredient VALUES (4, 'Honey', 'g');
DELETE FROM uses WHERE RecipeID = 1 AND IngredientID = 2;
INSERT INTO uses VALUES (1, 4, 50.00);
COMMIT;
```

- `BEGIN`: opens the transaction.
- `COMMIT`: makes the changes permanent. Before it, only you see them; after it, they are
  visible to everyone.
- `ROLLBACK`: discards everything since `BEGIN` -- as if nothing happened. A crash before
  `COMMIT` leads to an automatic rollback.

```sql
BEGIN;
DELETE FROM services WHERE MachineNo = 1;  -- oops, forgot conditions
ROLLBACK;                                  -- services is unchanged
```

DCL statements can be bundled as well, e.g. transferring rights from Hugo to Anna:

```sql
BEGIN;
GRANT SELECT, INSERT, DELETE ON recipe TO Anna;
REVOKE ALL ON recipe FROM Hugo;
COMMIT;
```

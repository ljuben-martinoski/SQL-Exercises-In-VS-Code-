# SQL Lernprojekt

A hands-on SQL learning project using SQLite and VSCode. Covers core SQL concepts from basics to advanced queries, including a mini school database final project.

## Databases

**File:** `meine_datenbank.db` (SQLite) — main learning database

### Table: `personen`

| Column    | Type | Description       |
|-----------|------|-------------------|
| id        | INT  | Primary Key       |
| name      | TEXT | Full name         |
| alter_j   | INT  | Age               |
| groesse   | REAL | Height in meters  |
| stadt     | TEXT | City              |

**Sample data:** Anna Müller, Ben Schmidt, Clara Weber, David Klein, Eva Hoffmann

### Table: `autos`

| Column  | Type | Description     |
|---------|------|-----------------|
| id      | INT  | Primary Key     |
| marke   | TEXT | Brand           |
| modell  | TEXT | Model           |
| baujahr | INT  | Year of build   |
| preis   | REAL | Price in EUR    |

**Sample data:** VW Golf, BMW 3er, Mercedes A-Klasse, Toyota Yaris

**File:** `abschlussdatenbank.db` (SQLite) — school project database (Abschlussprojekt)

---

## SQL Files

| File | Topic |
|------|-------|
| [abfrage.sql](abfrage.sql) | CREATE TABLE + INSERT — sets up the `personen` table |
| [SELECT.sql](SELECT.sql) | SELECT basics — `*`, specific columns, column aliases with `AS` |
| [WHERE.sql](WHERE.sql) | Filtering with `WHERE` — comparison operators, `AND`, `OR` |
| [ORDER_BYandLIMIT.sql](ORDER_BYandLIMIT.sql) | Sorting with `ORDER BY` (ASC/DESC) and limiting results with `LIMIT` |
| [LIKE+IN+BETWEEN.sql](LIKE+IN+BETWEEN.sql) | Pattern matching with `LIKE`, value lists with `IN`, ranges with `BETWEEN` |
| [NULL+WerteVersetehen.sql](NULL+WerteVersetehen.sql) | Understanding NULL — `IS NULL`, `IS NOT NULL` |
| [DatentypenSQL.sql](DatentypenSQL.sql) | SQL data types overview |
| [DELETE.sql](DELETE.sql) | Deleting rows with `DELETE` |
| [UPDATE.sql](UPDATE.sql) | Updating rows with `UPDATE` |
| [PRIMARY_KEY.sql](PRIMARY_KEY.sql) | Primary keys and unique constraints |
| [FOREGIN_KEY.sql](FOREGIN_KEY.sql) | Foreign keys and referential integrity |
| [JOIN.sql](JOIN.sql) | Combining tables with `JOIN` (INNER, LEFT) |
| [COUNT,SUM,AVG,MIN,MAX.sql](COUNT,SUM,AVG,MIN,MAX.sql) | Aggregate functions |
| [GROUPBY+HAVING.sql](GROUPBY+HAVING.sql) | Grouping results with `GROUP BY` and filtering groups with `HAVING` |
| [INDEXING(Indizes).sql](INDEXING(Indizes).sql) | Creating and using indexes for performance |
| [Subqueries (Unterabfragen).sql](<Subqueries (Unterabfragen).sql>) | Nested queries / subqueries |
| [DerBibliothek.sql](DerBibliothek.sql) | Mini project — library database |

### Exercises (`Übungen/`)

| File | Topic |
|------|-------|
| [Übungen/create_insert.sql](Übungen/create_insert.sql) | Creates and populates the `autos` table |
| [Übungen/select.sql](Übungen/select.sql) | SELECT exercises |
| [Übungen/where.sql](Übungen/where.sql) | WHERE exercises on the `autos` table |
| [Übungen/OrderByandLimits.sql](Übungen/OrderByandLimits.sql) | ORDER BY and LIMIT exercises |
| [Übungen/LIKE+IN+BEETWEN.sql](Übungen/LIKE+IN+BEETWEN.sql) | LIKE, IN, BETWEEN exercises |
| [Übungen/NULLwerteVerstehen.sql](Übungen/NULLwerteVerstehen.sql) | NULL exercises |
| [Übungen/DatentypenSQL.sql](Übungen/DatentypenSQL.sql) | Data type exercises |
| [Übungen/DELETE.sql](Übungen/DELETE.sql) | DELETE exercises |
| [Übungen/FORGIN_KEY.sql](Übungen/FORGIN_KEY.sql) | Foreign key exercises |
| [Übungen/JOIN.sql](Übungen/JOIN.sql) | JOIN exercises |
| [Übungen/COUNT,SUM,AVG,MIN,MAX.sql](Übungen/COUNT,SUM,AVG,MIN,MAX.sql) | Aggregate function exercises |
| [Übungen/GROUPBY+HAVING.sql](Übungen/GROUPBY+HAVING.sql) | GROUP BY and HAVING exercises |
| [Übungen/INDEXING(Indizes).sql](Übungen/INDEXING(Indizes).sql) | Indexing exercises |
| [Übungen/Subqueris.sql](Übungen/Subqueris.sql) | Subquery exercises |
| [Übungen/Vermisched_Aufgaben.sql](Übungen/Vermisched_Aufgaben.sql) | Mixed exercises |
| [Übungen/DerBibliothek(projekt).sql](<Übungen/DerBibliothek(projekt).sql>) | Library project exercises |

---

## Final Project

### [Abschlussprojekt(Mini-Schuldatenbank).sql](<Abschlussprojekt(Mini-Schuldatenbank).sql>)

A mini school database combining all learned concepts.

**Tables:**

| Table     | Description                        |
|-----------|------------------------------------|
| `schuler` | Students with name, age, city      |
| `faecher` | Subjects with subject name, teacher|
| `noten`   | Grades linking students to subjects|

**Queries practiced:**
1. List all students grouped by name
2. Show each student's name, subject, and grade (JOIN)
3. Calculate the overall average grade
4. Average grade per subject — sorted best to worst

---

## Concepts Covered

- **SELECT** — retrieve all or specific columns
- **AS** — column aliases
- **WHERE** — filter rows with comparison operators
- **AND / OR** — combine conditions
- **LIKE / IN / BETWEEN** — pattern matching and range filtering
- **NULL** — handling missing values
- **ORDER BY** — sort results ASC / DESC
- **LIMIT** — restrict number of returned rows
- **DELETE / UPDATE** — modify or remove data
- **PRIMARY KEY / FOREIGN KEY** — constraints and referential integrity
- **JOIN** — combine multiple tables (INNER, LEFT)
- **COUNT / SUM / AVG / MIN / MAX** — aggregate functions
- **GROUP BY / HAVING** — group and filter aggregates
- **Indexes** — improve query performance
- **Subqueries** — nested SELECT statements

---

## Setup

1. Open the folder in VSCode
2. Install the **SQLite** extension (by `alexcvzz`)
3. Open any `.sql` file
4. Click **Run on active connection** or use `Ctrl+Shift+Q`
5. Select `meine_datenbank.db` as the database

# SQL Lernprojekt

A hands-on SQL learning project using SQLite and VSCode. The database contains two example tables (`personen`, `autos`) used to practice core SQL concepts.

## Database

**File:** `meine_datenbank.db` (SQLite)

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

---

## SQL Files

| File | Topic |
|------|-------|
| [abfrage.sql](abfrage.sql) | CREATE TABLE + INSERT — sets up the `personen` table |
| [SELECT.sql](SELECT.sql) | SELECT basics — `*`, specific columns, column aliases with `AS` |
| [WHERE.sql](WHERE.sql) | Filtering with `WHERE` — comparison operators, `AND`, `OR` |
| [OrderBYandLimit.sql](OrderBYandLimit.sql) | Sorting with `ORDER BY` (ASC/DESC) and limiting results with `LIMIT` |

### Exercises (`Übungen/`)

| File | Topic |
|------|-------|
| [Übungen/create_insert.sql](Übungen/create_insert.sql) | Creates and populates the `autos` table |
| [Übungen/where.sql](Übungen/where.sql) | WHERE exercises on the `autos` table |

---

## Concepts Covered

- **SELECT** — retrieve all or specific columns
- **AS** — rename columns in output (aliases)
- **WHERE** — filter rows with `=`, `!=`, `<`, `>`, `<=`, `>=`
- **AND / OR** — combine multiple conditions
- **ORDER BY** — sort results ascending (`ASC`) or descending (`DESC`)
- **LIMIT** — restrict the number of returned rows

---

## Setup

1. Open the folder in VSCode
2. Install the **SQLite** extension (by `alexcvzz`)
3. Open any `.sql` file
4. Click **Run on active connection** or use `Ctrl+Shift+Q`
5. Select `meine_datenbank.db` as the database

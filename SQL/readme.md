# SQL Commands

## 1. DDL (Data Definition Language)

**Definition:**

DDL (Data Definition Language) is used to **create, modify, and delete the structure of database objects** such as databases, tables, indexes, and constraints.

---

## DDL Commands

| Command | Purpose |
|----------|---------|
| `CREATE` | Creates a database or table |
| `ALTER` | Modifies the structure of a table |
| `DROP` | Deletes a table or database permanently |
| `TRUNCATE` | Removes all data from a table but keeps its structure |
| `RENAME` | Renames a database object |
| `CREATE INDEX` | Creates an index to speed up searching |
| `DROP INDEX` | Deletes an index |
| `ADD CONSTRAINT` | Adds a constraint to a table |
| `DROP CONSTRAINT` | Removes a constraint from a table |

---

# 1. CREATE

Creates a new database or table.

### Create Database

```sql
CREATE DATABASE College;
```

### Create Table

```sql
CREATE TABLE Student (
    ID INT PRIMARY KEY,
    Name VARCHAR(50),
    Age INT
);
```

---

# 2. ALTER

Modifies the structure of an existing table.

### Add Column

```sql
ALTER TABLE Student
ADD Email VARCHAR(100);
```

### Modify Column (MySQL)

```sql
ALTER TABLE Student
MODIFY Age BIGINT;
```

### Rename Column (MySQL)

```sql
ALTER TABLE Student
RENAME COLUMN Name TO StudentName;
```

### Drop Column

```sql
ALTER TABLE Student
DROP COLUMN Email;
```

---

# 3. DROP

Deletes the entire table along with its structure and data.

```sql
DROP TABLE Student;
```

Delete a database:

```sql
DROP DATABASE College;
```

---

# 4. TRUNCATE

Deletes all records from a table but keeps the table structure.

```sql
TRUNCATE TABLE Student;
```

---

# 5. RENAME

Renames a table.

```sql
RENAME TABLE Student TO Students;
```

---

# 6. CREATE INDEX

Creates an index to improve search performance.

```sql
CREATE INDEX idx_name
ON Student(Name);
```

---

# 7. DROP INDEX

Deletes an index.

### MySQL

```sql
DROP INDEX idx_name
ON Student;
```

### SQL Server

```sql
DROP INDEX Student.idx_name;
```

---

# 8. ADD CONSTRAINT

Adds a constraint to an existing table.

### Add UNIQUE Constraint

```sql
ALTER TABLE Student
ADD CONSTRAINT uq_email
UNIQUE (Email);
```

### Add CHECK Constraint

```sql
ALTER TABLE Student
ADD CONSTRAINT chk_age
CHECK (Age >= 18);
```

---

# 9. DROP CONSTRAINT

Removes a constraint from a table.

### MySQL

```sql
ALTER TABLE Student
DROP INDEX uq_email;
```

### SQL Server / Oracle

```sql
ALTER TABLE Student
DROP CONSTRAINT uq_email;
```

---

# Quick Revision

| Command | Example |
|----------|---------|
| `CREATE` | `CREATE TABLE Student (...);` |
| `ALTER` | `ALTER TABLE Student ADD Email VARCHAR(100);` |
| `DROP` | `DROP TABLE Student;` |
| `TRUNCATE` | `TRUNCATE TABLE Student;` |
| `RENAME` | `RENAME TABLE Student TO Students;` |
| `CREATE INDEX` | `CREATE INDEX idx_name ON Student(Name);` |
| `DROP INDEX` | `DROP INDEX idx_name ON Student;` |
| `ADD CONSTRAINT` | `ALTER TABLE Student ADD CONSTRAINT ...;` |
| `DROP CONSTRAINT` | `ALTER TABLE Student DROP CONSTRAINT ...;` |


# 2. DQL (Data Query Language)

## Definition

DQL (Data Query Language) is used to **retrieve (fetch) data from a database**.

The main DQL command is **`SELECT`**.

---

# DQL Commands

| Keyword | Purpose |
|----------|---------|
| `SELECT` | Retrieve data from a table |
| `DISTINCT` | Remove duplicate rows |
| `WHERE` | Filter records based on a condition |
| `AND` | Returns records when all conditions are true |
| `OR` | Returns records when at least one condition is true |
| `NOT` | Reverses a condition |
| `LIKE` | Searches data using patterns |
| `IN` | Checks multiple values |
| `BETWEEN` | Selects values within a range |
| `IS NULL` | Finds NULL values |
| `AS` | Gives a temporary name (alias) |
| `ORDER BY` | Sorts the result |
| `GROUP BY` | Groups similar records |
| `HAVING` | Filters grouped data |

---

# 1. SELECT

Retrieves data from a table.

```sql
SELECT * FROM Student;
```

Retrieve specific columns:

```sql
SELECT Name, Age
FROM Student;
```

---

# 2. DISTINCT

Removes duplicate values.

```sql
SELECT DISTINCT City
FROM Student;
```

---

# 3. WHERE

Filters records based on a condition.

```sql
SELECT *
FROM Student
WHERE Age > 18;
```

---

# 4. AND

Returns records only if **all conditions** are true.

```sql
SELECT *
FROM Student
WHERE Age > 18
AND City = 'Delhi';
```

---

# 5. OR

Returns records if **any one condition** is true.

```sql
SELECT *
FROM Student
WHERE City = 'Delhi'
OR City = 'Jaipur';
```

---

# 6. NOT

Reverses the condition.

```sql
SELECT *
FROM Student
WHERE NOT City = 'Delhi';
```

---

# 7. LIKE

Searches using patterns.

Starts with **A**

```sql
SELECT *
FROM Student
WHERE Name LIKE 'A%';
```

Ends with **a**

```sql
SELECT *
FROM Student
WHERE Name LIKE '%a';
```

Contains **an**

```sql
SELECT *
FROM Student
WHERE Name LIKE '%an%';
```

Exactly 5 characters

```sql
SELECT *
FROM Student
WHERE Name LIKE '_____';
```

---

# 8. IN

Checks multiple values.

```sql
SELECT *
FROM Student
WHERE City IN ('Delhi', 'Jaipur', 'Mumbai');
```

---

# 9. BETWEEN

Selects values within a range.

```sql
SELECT *
FROM Student
WHERE Age BETWEEN 18 AND 25;
```

---

# 10. IS NULL

Finds records with NULL values.

```sql
SELECT *
FROM Student
WHERE Email IS NULL;
```

Finds records that are not NULL.

```sql
SELECT *
FROM Student
WHERE Email IS NOT NULL;
```

---

# 11. AS (Alias)

Gives a temporary name to a column.

```sql
SELECT Name AS Student_Name
FROM Student;
```

---

# 12. ORDER BY

Sorts the result.

Ascending order

```sql
SELECT *
FROM Student
ORDER BY Age ASC;
```

Descending order

```sql
SELECT *
FROM Student
ORDER BY Age DESC;
```

---

# 13. GROUP BY

Groups rows with the same values.

```sql
SELECT City, COUNT(*)
FROM Student
GROUP BY City;
```

---

# 14. HAVING

Filters grouped records.

```sql
SELECT City, COUNT(*)
FROM Student
GROUP BY City
HAVING COUNT(*) > 2;
```

---

# Quick Revision

| Keyword | Example |
|----------|---------|
| `SELECT` | `SELECT * FROM Student;` |
| `DISTINCT` | `SELECT DISTINCT City FROM Student;` |
| `WHERE` | `WHERE Age > 18` |
| `AND` | `WHERE Age > 18 AND City='Delhi'` |
| `OR` | `WHERE City='Delhi' OR City='Jaipur'` |
| `NOT` | `WHERE NOT City='Delhi'` |
| `LIKE` | `WHERE Name LIKE 'A%'` |
| `IN` | `WHERE City IN ('Delhi','Jaipur')` |
| `BETWEEN` | `WHERE Age BETWEEN 18 AND 25` |
| `IS NULL` | `WHERE Email IS NULL` |
| `AS` | `SELECT Name AS Student_Name` |
| `ORDER BY` | `ORDER BY Age DESC` |
| `GROUP BY` | `GROUP BY City` |
| `HAVING` | `HAVING COUNT(*) > 2` |
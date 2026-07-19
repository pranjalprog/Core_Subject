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


# Aggregate Functions in SQL

## Definition

**Aggregate Functions** perform calculations on **multiple rows** and return **a single result**.

They are commonly used with the **`GROUP BY`** clause.

---

## Aggregate Functions

| Function | Purpose |
|----------|---------|
| `COUNT()` | Counts the number of rows |
| `SUM()` | Returns the total sum |
| `AVG()` | Returns the average value |
| `MAX()` | Returns the maximum value |
| `MIN()` | Returns the minimum value |

---

# Sample Table

| ID | Name | City | Salary |
|----|------|------|--------|
| 1 | Rahul | Delhi | 50000 |
| 2 | Aman | Jaipur | 40000 |
| 3 | Priya | Delhi | 60000 |
| 4 | Neha | Mumbai | 45000 |
| 5 | Ravi | Delhi | 55000 |

---

# 1. COUNT()

Counts the total number of rows.

```sql
SELECT COUNT(*)
FROM Student;
```

### Output

```
5
```

Count students in each city.

```sql
SELECT City, COUNT(*)
FROM Student
GROUP BY City;
```

### Output

| City | COUNT(*) |
|------|----------|
| Delhi | 3 |
| Jaipur | 1 |
| Mumbai | 1 |

---

# 2. SUM()

Returns the total sum of a numeric column.

```sql
SELECT SUM(Salary)
FROM Student;
```

### Output

```
250000
```

Total salary city-wise.

```sql
SELECT City, SUM(Salary)
FROM Student
GROUP BY City;
```

### Output

| City | SUM(Salary) |
|------|-------------|
| Delhi | 165000 |
| Jaipur | 40000 |
| Mumbai | 45000 |

---

# 3. AVG()

Returns the average value.

```sql
SELECT AVG(Salary)
FROM Student;
```

### Output

```
50000
```

Average salary city-wise.

```sql
SELECT City, AVG(Salary)
FROM Student
GROUP BY City;
```

---

# 4. MAX()

Returns the highest value.

```sql
SELECT MAX(Salary)
FROM Student;
```

### Output

```
60000
```

Highest salary in each city.

```sql
SELECT City, MAX(Salary)
FROM Student
GROUP BY City;
```

---

# 5. MIN()

Returns the lowest value.

```sql
SELECT MIN(Salary)
FROM Student;
```

### Output

```
40000
```

Lowest salary in each city.

```sql
SELECT City, MIN(Salary)
FROM Student
GROUP BY City;
```

---

# Quick Revision

| Function | Example | Result |
|----------|---------|--------|
| `COUNT()` | `COUNT(*)` | Counts rows |
| `SUM()` | `SUM(Salary)` | Total sum |
| `AVG()` | `AVG(Salary)` | Average value |
| `MAX()` | `MAX(Salary)` | Highest value |
| `MIN()` | `MIN(Salary)` | Lowest value |

---

# Memory Trick

- **COUNT()** → Count rows
- **SUM()** → Total
- **AVG()** → Average
- **MAX()** → Highest value
- **MIN()** → Lowest value


# 3. DML (Data Manipulation Language)

## Definition

DML (Data Manipulation Language) is used to **insert, update, and delete data** in database tables.

---

## DML Commands

| Command | Purpose |
|----------|---------|
| `INSERT` | Adds a new record |
| `UPDATE` | Modifies existing records |
| `DELETE` | Deletes records |

---

# 1. INSERT

Adds a new record to a table.

```sql
INSERT INTO Student (ID, Name, Age)
VALUES (101, 'Rahul', 20);
```

Insert multiple records.

```sql
INSERT INTO Student (ID, Name, Age)
VALUES
(102, 'Aman', 21),
(103, 'Priya', 22);
```

---

# 2. UPDATE

Updates existing records.

```sql
UPDATE Student
SET Age = 21
WHERE ID = 101;
```

Update multiple columns.

```sql
UPDATE Student
SET Name = 'Rahul Sharma',
    Age = 22
WHERE ID = 101;
```

> **Always use `WHERE`; otherwise, all rows will be updated.**

---

# 3. DELETE

Deletes records from a table.

Delete a specific record.

```sql
DELETE FROM Student
WHERE ID = 101;
```

Delete all records.

```sql
DELETE FROM Student;
```

> `DELETE` removes only the data; the table structure remains.

---

# Quick Revision

| Command | Example |
|----------|---------|
| `INSERT` | `INSERT INTO Student VALUES (101,'Rahul',20);` |
| `UPDATE` | `UPDATE Student SET Age=21 WHERE ID=101;` |
| `DELETE` | `DELETE FROM Student WHERE ID=101;` |

---

# 4. DCL (Data Control Language)

## Definition

DCL (Data Control Language) is used to **grant and revoke permissions** on database objects.

---

## DCL Commands

| Command | Purpose |
|----------|---------|
| `GRANT` | Gives permissions to a user |
| `REVOKE` | Removes permissions from a user |

---

# 1. GRANT

Grants permissions to a user.

```sql
GRANT SELECT
ON Student
TO user1;
```

Grant multiple permissions.

```sql
GRANT SELECT, INSERT, UPDATE
ON Student
TO user1;
```

---

# 2. REVOKE

Removes permissions from a user.

```sql
REVOKE SELECT
ON Student
FROM user1;
```

Remove multiple permissions.

```sql
REVOKE INSERT, UPDATE
ON Student
FROM user1;
```

---

# Quick Revision

| Command | Example |
|----------|---------|
| `GRANT` | `GRANT SELECT ON Student TO user1;` |
| `REVOKE` | `REVOKE SELECT ON Student FROM user1;` |

---

# 5. TCL (Transaction Control Language)

## Definition

TCL (Transaction Control Language) is used to **manage database transactions**.

---

## TCL Commands

| Command | Purpose |
|----------|---------|
| `COMMIT` | Permanently saves changes |
| `ROLLBACK` | Undoes changes |
| `SAVEPOINT` | Creates a checkpoint in a transaction |
| `START TRANSACTION` | Starts a new transaction |

---

# 1. START TRANSACTION

Begins a new transaction.

```sql
START TRANSACTION;
```

---

# 2. COMMIT

Permanently saves all changes made in the current transaction.

```sql
START TRANSACTION;

UPDATE Student
SET Age = 21
WHERE ID = 101;

COMMIT;
```

---

# 3. ROLLBACK

Undoes all changes since the last `COMMIT` or returns to a `SAVEPOINT`.

```sql
START TRANSACTION;

UPDATE Student
SET Age = 25
WHERE ID = 101;

ROLLBACK;
```

The update is cancelled.

---

# 4. SAVEPOINT

Creates a checkpoint inside a transaction.

```sql
START TRANSACTION;

UPDATE Student
SET Age = 21
WHERE ID = 101;

SAVEPOINT sp1;

UPDATE Student
SET Age = 22
WHERE ID = 101;

ROLLBACK TO sp1;

COMMIT;
```

After `ROLLBACK TO sp1`, the second update is undone, but the first update is kept.

---

# Quick Revision

| Command | Example |
|----------|---------|
| `START TRANSACTION` | `START TRANSACTION;` |
| `COMMIT` | `COMMIT;` |
| `ROLLBACK` | `ROLLBACK;` |
| `SAVEPOINT` | `SAVEPOINT sp1;` |

---

# Memory Trick

- **DML** → Change Data (`INSERT`, `UPDATE`, `DELETE`)
- **DCL** → Control Permissions (`GRANT`, `REVOKE`)
- **TCL** → Manage Transactions (`START TRANSACTION`, `COMMIT`, `ROLLBACK`, `SAVEPOINT`)s
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

# SQL Joins

## Definition

A **JOIN** is used to **combine rows from two or more tables based on a related column**.

---

# Types of Joins

| Join | Purpose |
|------|---------|
| `INNER JOIN` | Returns only matching rows |
| `LEFT JOIN` | Returns all rows from the left table and matching rows from the right table |
| `RIGHT JOIN` | Returns all rows from the right table and matching rows from the left table |
| `FULL OUTER JOIN` | Returns all rows from both tables |
| `CROSS JOIN` | Returns all possible combinations of rows |
| `SELF JOIN` | Joins a table with itself |

---

# Sample Tables

### Student

| StudentID | Name | CourseID |
|-----------|------|----------|
| 1 | Rahul | 101 |
| 2 | Aman | 102 |
| 3 | Priya | 103 |
| 4 | Neha | 104 |

### Course

| CourseID | CourseName |
|----------|------------|
| 101 | Java |
| 102 | DBMS |
| 105 | Python |

---

# 1. INNER JOIN

## Definition

Returns **only the matching records** from both tables.

### Syntax

```sql
SELECT *
FROM Student
INNER JOIN Course
ON Student.CourseID = Course.CourseID;
```

### Output

| Name | CourseName |
|------|------------|
| Rahul | Java |
| Aman | DBMS |

> Only matching `CourseID`s are returned.

---

# 2. LEFT JOIN (LEFT OUTER JOIN)

## Definition

Returns **all rows from the left table** and matching rows from the right table.

If no match exists, `NULL` is returned for the right table.

### Syntax

```sql
SELECT *
FROM Student
LEFT JOIN Course
ON Student.CourseID = Course.CourseID;
```

### Output

| Name | CourseName |
|------|------------|
| Rahul | Java |
| Aman | DBMS |
| Priya | NULL |
| Neha | NULL |

> All students are shown.

---

# 3. RIGHT JOIN (RIGHT OUTER JOIN)

## Definition

Returns **all rows from the right table** and matching rows from the left table.

If no match exists, `NULL` is returned for the left table.

### Syntax

```sql
SELECT *
FROM Student
RIGHT JOIN Course
ON Student.CourseID = Course.CourseID;
```

### Output

| Name | CourseName |
|------|------------|
| Rahul | Java |
| Aman | DBMS |
| NULL | Python |

> All courses are shown.

---

# 4. FULL OUTER JOIN

## Definition

Returns **all rows from both tables**.

Matching rows are combined, and non-matching rows contain `NULL`.

### Syntax

```sql
SELECT *
FROM Student
FULL OUTER JOIN Course
ON Student.CourseID = Course.CourseID;
```

### Output

| Name | CourseName |
|------|------------|
| Rahul | Java |
| Aman | DBMS |
| Priya | NULL |
| Neha | NULL |
| NULL | Python |

---

# 5. CROSS JOIN

## Definition

Returns **every row of the first table combined with every row of the second table**.

### Syntax

```sql
SELECT *
FROM Student
CROSS JOIN Course;
```

If:

- Student = **4 rows**
- Course = **3 rows**

Output rows:

```text
4 × 3 = 12 rows
```

---

# 6. SELF JOIN

## Definition

A **SELF JOIN** joins a table with itself.

It is useful when records in the same table are related.

### Example Table

| EmpID | Employee | ManagerID |
|-------|----------|-----------|
| 1 | Rahul | NULL |
| 2 | Aman | 1 |
| 3 | Priya | 1 |

### Query

```sql
SELECT E.Employee,
       M.Employee AS Manager
FROM Employee E
JOIN Employee M
ON E.ManagerID = M.EmpID;
```

### Output

| Employee | Manager |
|----------|---------|
| Aman | Rahul |
| Priya | Rahul |

---

# Quick Revision

| Join | Returns |
|------|----------|
| `INNER JOIN` | Only matching rows |
| `LEFT JOIN` | All left rows + matching right rows |
| `RIGHT JOIN` | All right rows + matching left rows |
| `FULL OUTER JOIN` | All rows from both tables |
| `CROSS JOIN` | All possible combinations |
| `SELF JOIN` | Joins a table with itself |

---

# Memory Trick

- **INNER JOIN** → Matching only
- **LEFT JOIN** → Everything from Left
- **RIGHT JOIN** → Everything from Right
- **FULL OUTER JOIN** → Everything from Both
- **CROSS JOIN** → Every combination
- **SELF JOIN** → Same table joins with itself

# SQL Set Operations

## Definition

**Set Operations** are used to **combine or compare the results of two or more `SELECT` queries**.

---

## Types of Set Operations

| Operation | Purpose |
|-----------|---------|
| `UNION` | Combines results and removes duplicates |
| `UNION ALL` | Combines results and keeps duplicates |
| `INTERSECT` | Returns common records |
| `EXCEPT` / `MINUS` | Returns records present in the first query but not in the second |

---

# Sample Tables

### Customers

| Name |
|------|
| Alice |
| Bob |
| Carol |

### Suppliers

| Name |
|------|
| Bob |
| Carol |
| David |

---

# 1. UNION

## Definition

Combines the results of two queries and **removes duplicate rows**.

### Syntax

```sql
SELECT Name
FROM Customers

UNION

SELECT Name
FROM Suppliers;
```

### Output

| Name |
|------|
| Alice |
| Bob |
| Carol |
| David |

> Duplicate values are removed.

---

# 2. UNION ALL

## Definition

Combines the results of two queries and **keeps duplicate rows**.

### Syntax

```sql
SELECT Name
FROM Customers

UNION ALL

SELECT Name
FROM Suppliers;
```

### Output

| Name |
|------|
| Alice |
| Bob |
| Carol |
| Bob |
| Carol |
| David |

> Duplicate values are displayed.

---

# 3. INTERSECT

## Definition

Returns only the **common records** present in both queries.

### Syntax

```sql
SELECT Name
FROM Customers

INTERSECT

SELECT Name
FROM Suppliers;
```

### Output

| Name |
|------|
| Bob |
| Carol |

> Only common values are returned.

---

# 4. EXCEPT / MINUS

## Definition

Returns the records that exist in the **first query** but not in the **second query**.

> **`EXCEPT`** is used in SQL Server/PostgreSQL, while **`MINUS`** is used in Oracle.

### Syntax (EXCEPT)

```sql
SELECT Name
FROM Customers

EXCEPT

SELECT Name
FROM Suppliers;
```

### Syntax (Oracle)

```sql
SELECT Name
FROM Customers

MINUS

SELECT Name
FROM Suppliers;
```

### Output

| Name |
|------|
| Alice |

> `Bob` and `Carol` are removed because they exist in both tables.

---

# Conditions for Set Operations

Both `SELECT` queries must satisfy:

- Same number of columns.
- Corresponding columns must have compatible data types.

---

# Quick Revision

| Operation | Result |
|-----------|--------|
| `UNION` | Combine + Remove Duplicates |
| `UNION ALL` | Combine + Keep Duplicates |
| `INTERSECT` | Common Records |
| `EXCEPT` | First Query − Second Query |
| `MINUS` | Oracle version of `EXCEPT` |

---

# Memory Trick

- **UNION** → Add (No Duplicates)
- **UNION ALL** → Add (Duplicates Allowed)
- **INTERSECT** → Common Part
- **EXCEPT** → Difference
- **MINUS** → Oracle version of `EXCEPT`

# SQL Subquery

## Definition

A **Subquery** is a query written inside another SQL query.

The **inner query** executes first, and its result is used by the **outer query**.

---

## Subquery Concepts

| Concept | Purpose |
|---------|---------|
| **Subquery** | A query inside another query |
| **Inner Query** | Executes first |
| **Outer Query** | Uses the result of the inner query |

---

## Example

Find employees who earn more than the average salary.

```sql
SELECT Name
FROM Employee
WHERE Salary >
(
    SELECT AVG(Salary)
    FROM Employee
);
```

### Execution

1. Inner Query

```sql
SELECT AVG(Salary)
FROM Employee;
```

Suppose it returns:

```
50000
```

2. Outer Query

```sql
SELECT Name
FROM Employee
WHERE Salary > 50000;
```

Returns employees whose salary is greater than **50000**.

---

# Subquery Operators

| Operator | Purpose | Example |
|----------|---------|---------|
| `=` | Equal to | `Salary = (SELECT MAX(Salary) FROM Employee)` |
| `>` | Greater than | `Salary > (SELECT AVG(Salary) FROM Employee)` |
| `<` | Less than | `Salary < (SELECT AVG(Salary) FROM Employee)` |
| `>=` | Greater than or equal to | `Salary >= (SELECT AVG(Salary) FROM Employee)` |
| `<=` | Less than or equal to | `Salary <= (SELECT AVG(Salary) FROM Employee)` |
| `IN` | Value exists in a list | `DeptID IN (SELECT DeptID FROM Department)` |
| `NOT IN` | Value does not exist in a list | `DeptID NOT IN (SELECT DeptID FROM Department)` |

---

# SQL Data Types

## 1. String Data Types

| Data Type | Purpose | Example |
|-----------|---------|---------|
| `CHAR(n)` | Fixed-length string | `CHAR(10)` |
| `VARCHAR(n)` | Variable-length string | `VARCHAR(50)` |
| `BLOB` | Stores large binary data (images, files, videos) | Image, PDF |

### Example

```sql
CREATE TABLE Student (
    Name CHAR(20),
    Address VARCHAR(100)
);
```

---

## 2. Numeric Data Types

| Data Type | Purpose | Example |
|-----------|---------|---------|
| `TINYINT` | Small integer | 10 |
| `INT` | Normal integer | 100 |
| `BIGINT` | Large integer | 9999999999 |
| `FLOAT` | Decimal (less precision) | 45.67 |
| `DOUBLE` | Decimal (higher precision) | 45.678912345 |
| `BIT` | Stores 0 or 1 | 1 |
| `BOOLEAN` | Stores TRUE or FALSE | TRUE |

### Example

```sql
CREATE TABLE Employee (
    ID INT,
    Salary DOUBLE,
    Active BOOLEAN
);
```

---

## 3. Date & Time Data Types

| Data Type | Purpose | Example |
|-----------|---------|---------|
| `DATE` | Stores date | `2026-07-20` |
| `TIME` | Stores time | `10:30:00` |
| `YEAR` | Stores year | `2026` |

### Example

```sql
CREATE TABLE Orders (
    OrderDate DATE,
    OrderTime TIME,
    OrderYear YEAR
);
```

---

# SQL Constraints

## Definition

**Constraints** are rules applied to a table to ensure that only valid and consistent data is stored.

---

## Types of Constraints

| Constraint | Purpose |
|------------|---------|
| `PRIMARY KEY` | Unique + NOT NULL |
| `FOREIGN KEY` | Creates a relationship between tables |
| `UNIQUE` | Prevents duplicate values |
| `NOT NULL` | Prevents NULL values |
| `CHECK` | Enforces a condition on values |

---

## PRIMARY KEY

Uniquely identifies each record.

```sql
CREATE TABLE Student (
    ID INT PRIMARY KEY,
    Name VARCHAR(50)
);
```

---

## FOREIGN KEY

Connects two tables.

```sql
CREATE TABLE Marks (
    StudentID INT,
    Marks INT,
    FOREIGN KEY (StudentID)
    REFERENCES Student(ID)
);
```

---

## UNIQUE

Does not allow duplicate values.

```sql
CREATE TABLE Student (
    Email VARCHAR(100) UNIQUE
);
```

---

## NOT NULL

Does not allow NULL values.

```sql
CREATE TABLE Student (
    Name VARCHAR(50) NOT NULL
);
```

---

## CHECK

Ensures that values satisfy a condition.

```sql
CREATE TABLE Student (
    Age INT CHECK (Age >= 18)
);
```

---

# Quick Revision

## Subquery

- Query inside another query.
- Inner query executes first.
- Outer query uses the inner query's result.

## Data Types

| Category | Examples |
|----------|----------|
| String | `CHAR`, `VARCHAR`, `BLOB` |
| Numeric | `TINYINT`, `INT`, `BIGINT`, `FLOAT`, `DOUBLE`, `BIT`, `BOOLEAN` |
| Date & Time | `DATE`, `TIME`, `YEAR` |

## Constraints

| Constraint | Purpose |
|------------|---------|
| `PRIMARY KEY` | Unique + NOT NULL |
| `FOREIGN KEY` | Connects tables |
| `UNIQUE` | No duplicate values |
| `NOT NULL` | No NULL values |
| `CHECK` | Enforces conditions |
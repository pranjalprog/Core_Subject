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
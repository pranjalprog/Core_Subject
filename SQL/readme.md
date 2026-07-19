# Set Operations in SQL

**Set Operations** are used to **combine or compare the results of multiple `SELECT` queries**.

---

# 1. UNION

## Definition

`UNION` combines the results of two or more `SELECT` queries and **removes duplicate records**.

## Syntax

```sql
SELECT column_name
FROM table1

UNION

SELECT column_name
FROM table2;
```

## Example

```sql
SELECT name
FROM customers

UNION

SELECT name
FROM suppliers;
```

### Data

**Customers**

```
Alice
Bob
```

**Suppliers**

```
Bob
Carol
```

### Output

```
Alice
Bob
Carol
```

> Duplicate **Bob** is removed.

---

# 2. UNION ALL

## Definition

`UNION ALL` combines the results of multiple `SELECT` queries and **keeps duplicate records**.

## Syntax

```sql
SELECT column_name
FROM table1

UNION ALL

SELECT column_name
FROM table2;
```

## Example

```sql
SELECT name
FROM customers

UNION ALL

SELECT name
FROM suppliers;
```

### Output

```
Alice
Bob
Bob
Carol
```

> Duplicate **Bob** is also displayed.

---

# 3. INTERSECT

## Definition

`INTERSECT` returns only the **common records** present in both queries.

## Syntax

```sql
SELECT column_name
FROM table1

INTERSECT

SELECT column_name
FROM table2;
```

## Example

```sql
SELECT name
FROM customers

INTERSECT

SELECT name
FROM suppliers;
```

### Data

**Customers**

```
Alice
Bob
Carol
```

**Suppliers**

```
Bob
Carol
David
```

### Output

```
Bob
Carol
```

> Only common values are returned.

---

# 4. EXCEPT / MINUS

## Definition

`EXCEPT` returns the records that are present in the **first query but not in the second query**.

In **Oracle**, `MINUS` is used instead of `EXCEPT`.

## Syntax

```sql
SELECT column_name
FROM table1

EXCEPT

SELECT column_name
FROM table2;
```

### Oracle Syntax

```sql
SELECT column_name
FROM table1

MINUS

SELECT column_name
FROM table2;
```

## Example

```sql
SELECT name
FROM customers

EXCEPT

SELECT name
FROM suppliers;
```

### Data

**Customers**

```
Alice
Bob
Carol
```

**Suppliers**

```
Carol
David
```

### Output

```
Alice
Bob
```

> **Carol** is removed because it exists in both tables.

---

# Conditions for Set Operations

Both `SELECT` queries must satisfy the following conditions:

## 1. Same Number of Columns

✅ Correct

```sql
SELECT name
FROM customers

UNION

SELECT supplier_name
FROM suppliers;
```

❌ Wrong

```sql
SELECT id, name
FROM customers

UNION

SELECT supplier_name
FROM suppliers;
```

---

## 2. Compatible Data Types

The corresponding columns must have compatible data types.

✅ Correct

```sql
SELECT name
FROM customers

UNION

SELECT supplier_name
FROM suppliers;
```

❌ Wrong

```sql
SELECT age
FROM customers

UNION

SELECT joining_date
FROM employees;
```

---

# Interview Examples

## UNION

```sql
SELECT city
FROM employees

UNION

SELECT city
FROM customers;
```

---

## UNION ALL

```sql
SELECT city
FROM employees

UNION ALL

SELECT city
FROM customers;
```

---

## INTERSECT

```sql
SELECT city
FROM employees

INTERSECT

SELECT city
FROM customers;
```

---

## EXCEPT

```sql
SELECT city
FROM employees

EXCEPT

SELECT city
FROM customers;
```

---

# Quick Revision

| Operation | Purpose |
|-----------|---------|
| `UNION` | Combine results and remove duplicates |
| `UNION ALL` | Combine results and keep duplicates |
| `INTERSECT` | Return common records |
| `EXCEPT` | Return records in the first query but not in the second |
| `MINUS` | Oracle version of `EXCEPT` |

---

# Memory Trick

- **UNION** → Combine + Remove Duplicates
- **UNION ALL** → Combine + Keep Duplicates
- **INTERSECT** → Common Records
- **EXCEPT** → First − Second
- **MINUS** → Oracle version of `EXCEPT`
# Top 50 Most Asked DBMS Interview Questions (Fresher)

# 1. What is DBMS?

**Answer:**
DBMS (Database Management System) is software used to store, manage, and retrieve data efficiently.

**Example:** MySQL, Oracle, SQL Server.

---

# 2. What is a Database?

**Answer:**
A database is an organized collection of related data.

**Example:** Student records in a college.

---

# 3. DBMS vs RDBMS

| DBMS                 | RDBMS                   |
| -------------------- | ----------------------- |
| Data stored as files | Data stored in tables   |
| No relationships     | Relationships supported |
| Less secure          | More secure             |
| Example: XML         | Example: MySQL          |

---

# 4. What is a Table?

**Answer:**
A table stores data in rows and columns.

**Example:**

| RollNo | Name  |
| ------ | ----- |
| 101    | Rahul |

---

# 5. What is a Row (Tuple)?

A single record in a table.

**Example:**
(101, Rahul)

---

# 6. What is an Attribute?

A column in a table.

**Example:** Name, Age.

---

# 7. What is a Primary Key?

Uniquely identifies each record.

**Example:**

```sql
RollNo INT PRIMARY KEY
```

---

# 8. What is a Foreign Key?

A key that references another table's primary key.

```sql
DepartmentID REFERENCES Department(ID)
```

---

# 9. Difference Between Primary Key and Foreign Key

| Primary Key    | Foreign Key      |
| -------------- | ---------------- |
| Unique         | Can repeat       |
| Not NULL       | Can be NULL      |
| Identifies row | Creates relation |

---

# 10. What is a Candidate Key?

Minimal super key.

Example:

* RollNo
* Email

---

# 11. What is a Super Key?

Any set of attributes that uniquely identify a row.

Example:

* RollNo
* RollNo + Name

---

# 12. What is an Alternate Key?

Candidate key not selected as primary key.

---

# 13. What is Composite Key?

A key made of multiple columns.

```text
(StudentID, CourseID)
```

---

# 14. What is a Unique Key?

Ensures unique values.

NULL values are allowed.

---

# 15. What is an ER Diagram?

Graphical representation of a database.

Entities, attributes, and relationships are shown.

---

# 16. What is an Entity?

A real-world object.

Examples:

* Student
* Employee

---

# 17. Strong Entity vs Weak Entity

| Strong          | Weak           |
| --------------- | -------------- |
| Has primary key | No primary key |
| Independent     | Dependent      |

Example:

* Student
* Dependent

---

# 18. What is Cardinality?

Relationship between entities.

Examples:

* 1:1
* 1:M
* M:N

---

# 19. What is Normalization?

Process of reducing redundancy.

---

# 20. What is 1NF?

Only atomic values allowed.

---

# 21. What is 2NF?

1NF + No Partial Dependency.

---

# 22. What is 3NF?

2NF + No Transitive Dependency.

Example:

```
EmpID → DeptID
DeptID → DeptName
```

---

# 23. What is BCNF?

Every determinant must be a super key.

---

# 24. What is Functional Dependency?

```text
A → B
```

A determines B.

Example:

```
RollNo → Name
```

---

# 25. What is Closure?

Set of attributes derived from an attribute.

Example:

```
A → B
B → C

A+ = {A,B,C}
```

---

# 26. What is Transaction?

Logical unit of work.

Example:

* Debit
* Credit

---

# 27. What are ACID Properties?

* Atomicity
* Consistency
* Isolation
* Durability

---

# 28. What is Atomicity?

Either complete transaction or rollback.

---

# 29. What is Consistency?

Database remains valid.

---

# 30. What is Isolation?

Transactions do not interfere.

---

# 31. What is Durability?

Committed data remains permanent.

---

# 32. What is a Schedule?

Execution order of transactions.

---

# 33. What is Serial Schedule?

Transactions execute one after another.

---

# 34. What is Non-Serial Schedule?

Transactions execute concurrently.

---

# 35. What is Serializability?

Checks whether concurrent execution is safe.

---

# 36. What is Conflict Serializability?

Can be converted into a serial schedule by swapping operations.

---

# 37. What is View Serializability?

Produces the same final result as serial execution.

---

# 38. What is Dirty Read?

Reading uncommitted data.

---

# 39. What is Cascading Rollback?

One rollback causes multiple rollbacks.

---

# 40. What is a Recoverable Schedule?

Reader commits after writer commits.

---

# 41. What is Indexing?

Technique to speed up data retrieval.

---

# 42. Types of Indexes

* Primary Index
* Secondary Index
* Clustering Index

---

# 43. What is B-Tree?

Balanced indexing tree.

Search complexity:

```
O(log n)
```

---

# 44. What is B+ Tree?

Only leaf nodes store data.

Used in DBMS indexes.

---

# 45. Difference Between B-Tree and B+ Tree

| B-Tree            | B+ Tree            |
| ----------------- | ------------------ |
| Data in all nodes | Data in leaf nodes |
| Slower            | Faster             |

---

# 46. What is SQL?

Structured Query Language.

Used to manage databases.

---

# 47. Difference Between DELETE, DROP, and TRUNCATE

| DELETE            | TRUNCATE         | DROP          |
| ----------------- | ---------------- | ------------- |
| Removes rows      | Removes all rows | Deletes table |
| WHERE allowed     | No WHERE         | Table removed |
| Rollback possible | Limited          | Not possible  |

---

# 48. Difference Between WHERE and HAVING

| WHERE           | HAVING          |
| --------------- | --------------- |
| Before GROUP BY | After GROUP BY  |
| Row filtering   | Group filtering |

---

# 49. What is JOIN?

Used to combine tables.

Types:

* INNER JOIN
* LEFT JOIN
* RIGHT JOIN
* FULL JOIN

---

# 50. What is SQL Query Execution Order?

```text
FROM
WHERE
GROUP BY
HAVING
SELECT
DISTINCT
ORDER BY
LIMIT
```

---

# Frequently Asked SQL Example

```sql
SELECT Department, COUNT(*)
FROM Employee
WHERE Salary > 30000
GROUP BY Department
HAVING COUNT(*) > 2
ORDER BY Department;
```

**Interview Question:** Explain execution order.

**Answer:**

1. FROM
2. WHERE
3. GROUP BY
4. HAVING
5. SELECT
6. ORDER BY

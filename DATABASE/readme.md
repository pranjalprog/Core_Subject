# DBMS Complete Notes

# 1. Database & DBMS

## Database
Related data ka collection.

## DBMS
Software jo data ko store, manage aur retrieve karta hai.

### Problems Solved by DBMS
- Data Redundancy
- Data Inconsistency
- Data Access Difficulty
- Data Isolation
- Integrity Problems
- Atomicity Problems
- Concurrent Access Issues
- Security Problems

---

# 2. ER Diagram

ER Diagram database structure ka graphical representation hai.

## Components

### Entity Set
Real-world object.

**Examples:**
- Student
- Employee

### Attributes
Entity ki properties.

**Examples:**
- Name
- Age
- RollNo

### Relationship
Entities ke beech connection.

**Example:**
Student → Studies → Course

---

# 3. Entity Set Types

## Strong Entity
- Primary Key hoti hai.
- Uniquely identify kar sakta hai.

**Example:**
```
Student(RollNo)
```

## Weak Entity
- Primary Key nahi hoti.
- Discriminator use karta hai.

**Example:**
```
Dependent
```

---

# 4. Relationship Types

## Unary
1 entity involved.

**Example:**
```
Employee manages Employee
```

## Binary
2 entities involved.

**Example:**
```
Student studies Course
```

## Ternary
3 entities involved.

**Example:**
```
Doctor treats Patient using Medicine
```

## N-ary
N entities involved.

---

# 5. Cardinality

| Type | Example |
|------|----------|
| One-to-One (1:1) | Person ↔ Passport |
| One-to-Many (1:M) | Department → Employees |
| Many-to-One (M:1) | Employees → Department |
| Many-to-Many (M:N) | Students ↔ Courses |

---

# 6. Attribute Types

| Type | Example |
|------|----------|
| Simple | Age |
| Composite | Name, Address |
| Multivalued | Mobile No |
| Derived | Age from DOB |
| Key Attribute | RollNo |

---

# 7. Constraints

## Domain Constraint
Value valid domain se hi aani chahiye.

- Age = 25 ✔
- Age = ABC ❌

## Tuple Uniqueness
Har tuple unique hota hai.

## Key Constraint
Primary Key unique + NOT NULL.

## Entity Integrity
Primary Key NULL nahi ho sakti.

## Referential Integrity
Foreign Key referenced table me exist kare.

---

# 8. Closure

## Definition
Attribute se derive hone wale sab attributes.

### Example
```
A → B
B → C

A+ = {A, B, C}
```

---

# 9. Keys

## Super Key
Uniquely identify kare.

```
(RollNo)
(RollNo, Name)
```

## Candidate Key
Minimal Super Key.

## Primary Key
Selected Candidate Key.

## Alternate Key
Candidate Key jo Primary Key nahi bani.

## Foreign Key
Dusri table ki Primary Key ko refer kare.

## Composite Key
Multiple columns wali key.

```
(StudentID, CourseID)
```

## Unique Key
- Unique values.
- NULL allow kar sakti hai.

---

# 10. Functional Dependency

## Definition
```
A → B
```

A determine karta hai B.

### Example
```
RollNo → Name
```

## Trivial FD
```
AB → A
```

RHS ⊆ LHS

## Non-Trivial FD
```
A → B
```

RHS ⊄ LHS

---

# 11. Decomposition

Relation ko todna.

## Lossless Decomposition

```
R1 ⋈ R2 = R
```

✔ Original relation mil jati hai.

## Lossy Decomposition

```
R1 ⋈ R2 ⊃ R
```

❌ Data loss hota hai.

---

# 12. Normalization

## Purpose
- Redundancy Remove
- Consistency Increase

## 1NF
Atomic values only.

❌
```
101,102
```

✔
```
101
102
```

## 2NF
1NF + No Partial Dependency.

## 3NF
2NF + No Transitive Dependency.

Example:
```
EmpID → DeptID
DeptID → DeptName
```

## BCNF
For every:
```
A → B
```

A must be a Super Key.

---

# 13. Transaction

Logical unit of work.

### Example
Bank Transfer:
1. Debit
2. Credit

---

# 14. Transaction Operations

## Read(A)
Database → Memory

## Write(A)
Memory → Database

---

# 15. Transaction States

```
Active
   ↓
Partially Committed
   ↓
Committed
   ↓
Terminated
```

### Failure Path

```
Active
   ↓
Failed
   ↓
Aborted
   ↓
Terminated
```

---

# 16. ACID Properties

## Atomicity
All or Nothing.

## Consistency
Database valid state me rahe.

## Isolation
Transactions interfere na kare.

## Durability
Commit ke baad data permanent.

---

# 17. Schedules

Execution order of transactions.

## Serial Schedule

```
T1 Complete
T2 Complete
```

✔ Consistent  
✔ Recoverable  
✔ Cascadeless  
✔ Strict  

## Non-Serial Schedule

```
T1
T2
T1
T2
```

Concurrent execution.

---

# 18. Serializability

Non-serial schedule safe hai ya nahi.

## Conflict Serializability
Non-conflicting operations swap karke serial ban jaye.

## View Serializability
Same final view produce kare.

---

# 19. Recoverability

## Dirty Read
Uncommitted data read.

## Recoverable Schedule
Reader commit tab kare jab writer commit kare.

## Irrecoverable Schedule
Reader pehle commit kar de.

## Cascading Rollback
Ek rollback se multiple rollback.

## Cascadeless Schedule
Dirty Read allowed nahi.

## Strict Schedule
Dirty Read + Dirty Write dono allowed nahi.

---

# 20. Relational Algebra

## Selection (σ)

```
σ(Age > 18)(Student)
```

Rows select karta hai.

## Projection (π)

```
π(Name, Age)(Student)
```

Columns select karta hai.

## Cross Product (×)

```
R × S
```

Rows = m × n

## Union (∪)

```
R ∪ S
```

Distinct rows.

## Minus (-)

```
R - S
```

## Rename (ρ)

```
ρ(NewName)(Student)
```

## Intersection (∩)

Common tuples.

## Conditional Join

```
R ⋈ condition S
```

## Equi Join

Condition sirf "=".

## Natural Join

Common columns automatically join.

## Left Outer Join

```
R ⟕ S
```

All rows of R.

## Right Outer Join

```
R ⟖ S
```

All rows of S.

## Full Outer Join

```
R ⟗ S
```

All rows of both.

## Division

```
A / B
```

Associated with every tuple of B.

---

# 21. Indexing

## Primary Index
Primary Key based.

Formula:

```
log₂(Bi) + 1
```

Bi = Index Blocks

## Clustering Index
- Non-key field par.
- Records physically sorted.

## Secondary Index
Extra access path.

---

# 22. B-Tree

For order = P

- Maximum Children = P
- Minimum Children = ⌈P/2⌉
- Maximum Keys = P − 1
- Minimum Keys = ⌈P/2⌉ − 1

---

# 23. B+ Tree

| B-Tree | B+ Tree |
|--------|---------|
| Data pointer every node | Only leaf node |
| More depth | Less depth |
| Slower | Faster |

---

# 24. SQL Language Categories

## DDL (Structure)
- CREATE
- ALTER
- DROP
- TRUNCATE
- RENAME

## DML (Data)
- SELECT
- INSERT
- UPDATE
- DELETE
- MERGE

## DCL (Permissions)
- GRANT
- REVOKE

## TCL (Transactions)
- COMMIT
- ROLLBACK
- SAVEPOINT

---

# 25. SQL Query Execution Order

```
FROM
↓
WHERE
↓
GROUP BY
↓
HAVING
↓
SELECT
↓
DISTINCT
↓
ORDER BY
↓
LIMIT / TOP
```

---

# Interview Most Important Topics

1. DBMS vs RDBMS
2. ER Diagram
3. Strong vs Weak Entity
4. Cardinality
5. Keys
6. Functional Dependency
7. Closure
8. Normalization (1NF, 2NF, 3NF, BCNF)
9. Lossless vs Lossy
10. Transaction
11. ACID Properties
12. Schedules
13. Serializability
14. Recoverable Schedule
15. Joins
16. GROUP BY vs HAVING
17. Indexing
18. Primary Key vs Foreign Key
19. B-Tree vs B+ Tree
20. SQL Query Execution Order
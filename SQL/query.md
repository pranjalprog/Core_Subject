# SQL Interview Questions

## 1. SECOND HIGHEST SALARY

```sql
SELECT DISTINCT salary
FROM employee
ORDER BY salary DESC
LIMIT 1 OFFSET 1;
```

---

## 2. HIGHEST SALARY

```sql
SELECT DISTINCT salary
FROM employee
ORDER BY salary DESC
LIMIT 1;
```

---

## 3. COUNT EMPLOYEE IN EACH DEPARTMENT

```sql
SELECT dept_id, COUNT(*) AS totalemp
FROM employee
GROUP BY dept_id;
```

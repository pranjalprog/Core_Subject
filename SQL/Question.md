# SQL Interview Questions (1–50)

## Level 1: Basic SQL (1–15)

### 1. Retrieve all records from a table.
```sql
SELECT * 
FROM Employee;
```

### 2. Retrieve specific columns.
```sql
SELECT name, salary
FROM Employee;
```

### 3. Find employees with salary greater than 50000.
```sql
SELECT *
FROM Employee
WHERE salary > 50000;
```

### 4. Find employees from Delhi.
```sql
SELECT *
FROM Employee
WHERE city = 'Delhi';
```

### 5. Use AND condition.
```sql
SELECT *
FROM Employee
WHERE city = 'Delhi'
AND salary > 50000;
```

### 6. Use OR condition.
```sql
SELECT *
FROM Employee
WHERE city = 'Delhi'
OR city = 'Mumbai';
```

### 7. Find names starting with 'A'.
```sql
SELECT *
FROM Employee
WHERE name LIKE 'A%';
```

### 8. Find names ending with 'n'.
```sql
SELECT *
FROM Employee
WHERE name LIKE '%n';
```

### 9. Find employees between salaries 30000 and 50000.
```sql
SELECT *
FROM Employee
WHERE salary BETWEEN 30000 AND 50000;
```

### 10. Find employees from multiple cities.
```sql
SELECT *
FROM Employee
WHERE city IN ('Delhi', 'Mumbai');
```

### 11. Remove duplicate departments.
```sql
SELECT DISTINCT department
FROM Employee;
```

### 12. Sort employees by salary.
```sql
SELECT *
FROM Employee
ORDER BY salary DESC;
```

### 13. Find NULL values.
```sql
SELECT *
FROM Employee
WHERE manager_id IS NULL;
```

### 14. Use alias.
```sql
SELECT salary AS EmployeeSalary
FROM Employee;
```

### 15. Count total employees.
```sql
SELECT COUNT(*)
FROM Employee;
```

---

# Aggregate Functions (16–20)

### 16. Find maximum salary.
```sql
SELECT MAX(salary)
FROM Employee;
```

### 17. Find minimum salary.
```sql
SELECT MIN(salary)
FROM Employee;
```

### 18. Find average salary.
```sql
SELECT AVG(salary)
FROM Employee;
```

### 19. Find total salary.
```sql
SELECT SUM(salary)
FROM Employee;
```

### 20. Count employees department-wise.
```sql
SELECT department,
       COUNT(*)
FROM Employee
GROUP BY department;
```

---

# GROUP BY & HAVING (21–25)

### 21. Departments having more than 5 employees.
```sql
SELECT department,
       COUNT(*)
FROM Employee
GROUP BY department
HAVING COUNT(*) > 5;
```

### 22. Average salary department-wise.
```sql
SELECT department,
       AVG(salary)
FROM Employee
GROUP BY department;
```

### 23. Maximum salary in each department.
```sql
SELECT department,
       MAX(salary)
FROM Employee
GROUP BY department;
```

### 24. Cities having more than 10 employees.
```sql
SELECT city,
       COUNT(*)
FROM Employee
GROUP BY city
HAVING COUNT(*) > 10;
```

### 25. Departments with average salary above 50000.
```sql
SELECT department,
       AVG(salary)
FROM Employee
GROUP BY department
HAVING AVG(salary) > 50000;
```

---

# Joins (26–33)

### 26. INNER JOIN
```sql
SELECT e.name,
       d.department_name
FROM Employee e
INNER JOIN Department d
ON e.dept_id = d.id;
```

### 27. LEFT JOIN
```sql
SELECT e.name,
       d.department_name
FROM Employee e
LEFT JOIN Department d
ON e.dept_id = d.id;
```

### 28. RIGHT JOIN
```sql
SELECT e.name,
       d.department_name
FROM Employee e
RIGHT JOIN Department d
ON e.dept_id = d.id;
```

### 29. Find employees without departments.
```sql
SELECT e.*
FROM Employee e
LEFT JOIN Department d
ON e.dept_id = d.id
WHERE d.id IS NULL;
```

### 30. Customers who never ordered.
```sql
SELECT c.*
FROM Customers c
LEFT JOIN Orders o
ON c.id = o.customer_id
WHERE o.id IS NULL;
```

### 31. Employee-Manager relationship.
```sql
SELECT e.name AS Employee,
       m.name AS Manager
FROM Employee e
JOIN Employee m
ON e.manager_id = m.id;
```

### 32. CROSS JOIN example.
```sql
SELECT *
FROM Students
CROSS JOIN Courses;
```

### 33. Find department of highest salary employee.
```sql
SELECT e.name,
       d.department_name
FROM Employee e
JOIN Department d
ON e.dept_id = d.id
WHERE salary = (
    SELECT MAX(salary)
    FROM Employee
);
```

---

# Subqueries (34–40)

### 34. Highest salary.
```sql
SELECT *
FROM Employee
WHERE salary = (
    SELECT MAX(salary)
    FROM Employee
);
```

### 35. Second highest salary.
```sql
SELECT MAX(salary)
FROM Employee
WHERE salary < (
    SELECT MAX(salary)
    FROM Employee
);
```

### 36. Employees earning above average.
```sql
SELECT *
FROM Employee
WHERE salary > (
    SELECT AVG(salary)
    FROM Employee
);
```

### 37. Employees in same department as John.
```sql
SELECT *
FROM Employee
WHERE dept_id = (
    SELECT dept_id
    FROM Employee
    WHERE name = 'John'
);
```

### 38. Third highest salary.
```sql
SELECT DISTINCT salary
FROM Employee
ORDER BY salary DESC
LIMIT 1 OFFSET 2;
```

### 39. Product price greater than average.
```sql
SELECT *
FROM Product
WHERE price > (
    SELECT AVG(price)
    FROM Product
);
```

### 40. Departments having highest average salary.
```sql
SELECT department,
       AVG(salary)
FROM Employee
GROUP BY department
ORDER BY AVG(salary) DESC
LIMIT 1;
```

---

# Advanced Questions (41–50)

### 41. Find duplicate emails.
```sql
SELECT email,
       COUNT(*)
FROM Users
GROUP BY email
HAVING COUNT(*) > 1;
```

### 42. Remove duplicates.
```sql
SELECT email,
       MIN(id)
FROM Users
GROUP BY email;
```

### 43. Top 3 salaries.
```sql
SELECT *
FROM Employee
ORDER BY salary DESC
LIMIT 3;
```

### 44. Latest order of each customer.
```sql
SELECT customer_id,
       MAX(order_date)
FROM Orders
GROUP BY customer_id;
```

### 45. Customers with multiple orders.
```sql
SELECT customer_id,
       COUNT(*)
FROM Orders
GROUP BY customer_id
HAVING COUNT(*) > 1;
```

### 46. Rank employees by salary.
```sql
SELECT name,
       salary,
       DENSE_RANK() OVER (
           ORDER BY salary DESC
       ) AS Rank
FROM Employee;
```

### 47. Running total.
```sql
SELECT amount,
       SUM(amount) OVER (
           ORDER BY id
       ) AS RunningTotal
FROM Sales;
```

### 48. Row number.
```sql
SELECT name,
       ROW_NUMBER() OVER (
           ORDER BY salary DESC
       ) AS RowNum
FROM Employee;
```

### 49. Find nth highest salary.
```sql
SELECT DISTINCT salary
FROM Employee
ORDER BY salary DESC
LIMIT 1 OFFSET n-1;
```

### 50. Delete duplicate rows.
```sql
DELETE FROM Users
WHERE id NOT IN (
    SELECT MIN(id)
    FROM Users
    GROUP BY email
);
```
-- 1. Create employees table
CREATE TABLE employees (
  id INTEGER PRIMARY KEY,
  name TEXT,
  department TEXT,
  role TEXT,
  salary REAL
);

-- 2. Insert sample data
INSERT INTO employees (id, name, department, role, salary) VALUES
(1,'Alice','Sales','Manager',70000),
(2,'Bob','Sales','Rep',50000),
(3,'Carol','HR','Manager',65000),
(4,'Dave','IT','Engineer',80000),
(5,'Eve','IT','Engineer',80000),
(6,'Frank','HR','Assistant',40000);

-- 3. Queries

-- Query 1: Count employees in each department
SELECT department, COUNT(*) AS num_employees
FROM employees
GROUP BY department;

-- Query 2: Average salary per department
SELECT department, ROUND(AVG(salary), 2) AS avg_salary
FROM employees
GROUP BY department;

-- Query 3: Total salary per department
SELECT department, SUM(salary) AS total_payroll
FROM employees
GROUP BY department;

-- Query 4: Highest salary in each department
SELECT department, MAX(salary) AS highest_salary
FROM employees
GROUP BY department;

-- Query 5: Lowest salary in each department
SELECT department, MIN(salary) AS lowest_salary
FROM employees
GROUP BY department;

-- Query 6: Number of employees by department and role
SELECT department, role, COUNT(*) AS count_by_role
FROM employees
GROUP BY department, role;

-- Query 7: Departments with average salary above 60,000
SELECT department, AVG(salary) AS avg_salary
FROM employees
GROUP BY department
HAVING AVG(salary) > 60000;

-- Query 8: Count distinct roles
SELECT COUNT(DISTINCT role) AS distinct_roles
FROM employees;

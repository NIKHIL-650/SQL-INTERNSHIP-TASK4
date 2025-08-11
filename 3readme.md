# Task 4 – Aggregate Functions and Grouping (SQL)

## 📌 Overview
This task demonstrates the use of *aggregate functions* and **GROUP BY** in SQL, as required in Task 4 of the assignment.  
The queries are based on a sample **employees** table and cover the following:

- COUNT() – Counting rows in groups
- AVG() – Calculating average values
- SUM() – Summing numeric values
- MAX() / MIN() – Finding highest and lowest values
- DISTINCT – Removing duplicates or counting unique values
- HAVING – Filtering groups after aggregation
- Grouping by multiple columns

---

## 🗂 Table Structure

### employees
| Column     | Type    | Description               |
|------------|---------|---------------------------|
| id         | INTEGER | Employee ID (Primary Key) |
| name       | TEXT    | Employee name             |
| department | TEXT    | Department name           |
| role       | TEXT    | Employee role             |
| salary     | REAL    | Employee salary           |

---

## 📄 Queries

### 1. Count employees in each department
```sql
SELECT department, COUNT(*) AS num_employees
FROM employees
GROUP BY department;
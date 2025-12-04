-- ======================================================
-- HR Analytics Project - SQL Queries
-- ======================================================

-- 1. Department headcount
SELECT department, COUNT(*) AS headcount
FROM employees
GROUP BY department
ORDER BY headcount DESC;

-- 2. Gender distribution
SELECT gender, COUNT(*) AS total
FROM employees
GROUP BY gender;

-- 3. Average employee age
SELECT AVG(EXTRACT(YEAR FROM AGE(birth_date))) AS avg_age
FROM employees;

-- 4. Hires by year
SELECT EXTRACT(YEAR FROM hire_date) AS hire_year, COUNT(*) AS hires
FROM employees
GROUP BY hire_year
ORDER BY hire_year;

-- 5. Average salary by department
SELECT department, AVG(salary) AS avg_salary
FROM employees
GROUP BY department
ORDER BY avg_salary DESC;

-- 6. Top 3 highest-paid employees
SELECT first_name, last_name, department, salary
FROM employees
ORDER BY salary DESC
LIMIT 3;

-- 7. Employee with longest tenure
SELECT first_name, last_name, hire_date,
       AGE(CURRENT_DATE, hire_date) AS tenure
FROM employees
ORDER BY tenure DESC
LIMIT 1;

-- 8. Employees earning above department average
SELECT e.first_name, e.last_name, e.department, e.salary,
       dept.avg_salary AS department_avg
FROM employees e
JOIN (
    SELECT department, AVG(salary) AS avg_salary
    FROM employees
    GROUP BY department
) dept
ON e.department = dept.department
WHERE e.salary > dept.avg_salary;

-- 9. Avg tenure by department
SELECT department, AVG(EXTRACT(YEAR FROM AGE(hire_date))) AS avg_tenure_years
FROM employees
GROUP BY department
ORDER BY avg_tenure_years DESC;

-- 10. Salary range by job_title
SELECT job_title,
       MIN(salary) AS min_salary,
       MAX(salary) AS max_salary,
       MAX(salary) - MIN(salary) AS salary_range
FROM employees
GROUP BY job_title
ORDER BY salary_range DESC;

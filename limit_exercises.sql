
USE employees;

SELECT *
FROM employees
WHERE birth_date LIKE '%-05-23'
  ORDER BY hire_date
LIMIT 20;


SELECT DISTINCT last_name FROM employees
ORDER BY last_name DESC
LIMIT 10;


SELECT *
FROM employees
WHERE birth_date LIKE '%-12-25'
LIMIT 5 OFFSET 10;



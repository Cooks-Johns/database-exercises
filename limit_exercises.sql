
USE employees;

SELECT *
FROM employees
WHERE birth_date LIKE '%-05-23'
  ORDER BY hire_date
LIMIT 20;


SELECT DISTINCT titles
FROM titles;


SELECT DISTINCT last_name
FROM employees
ORDER BY last_name DESC
LIMIT 10;


SELECT *
FROM employees
WHERE hire_date BETWEEEN '1990-01-01' AND '1999-12-31';
AND birth_date LIKE '%-12-25'
LIMIT 5;

lIMIT 5 OFFSET 0
lIMIT 5 OFFSET 5
lIMIT 5 OFFSET 10


lIMIT 5 OFFSET 0 ((pageN umb -1)) *





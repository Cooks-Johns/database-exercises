USE employees;

SELECT DISTINCT first_name
FROM employees
LIMIT 45;

SELECT first_name
FROM emoloyees
GROUP BY first_name
LIMIT 45;



-->

-- bad practice because you need to pick something more unique
SELECT
  emp_no,
  first_name
FROM  employees
WHERE first_name LIKE '%cia'
  GROUP BY emp_no
LIMIT 23;

-- GOOD

SELECT
   first_name, count(first_name)
FROM employees
WHERE first_name LIKE 'E%E'
  GROUP BY first_name;

  ---
SELECT
   first_name,last_name
FROM employees
WHERE first_name LIKE '%Johnathon%'
    AND last_name LIKE '%C%'
  GROUP BY first_name, last_name;

SELECT *
FROM employees
WHERE first_name = 'Ebbe'
  AND last_name = 'Blokdijk';


  SELECT
   first_name, last_name, COUNT(*)
   AS repeats
FROM employees
-- WHERE first_name LIKE 'ebbe'
    GROUP BY first_name, last_name
    ORDER BY repeats DESC;

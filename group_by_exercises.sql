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

c

  ---
SELECT
   first_name,last_name
FROM employees
WHERE first_name LIKE '%Jo%'
    AND last_name not LIKE '%C%'
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



SELECT DISTINCT, count(*)
FROM salaries
WHERE salary >= 50000
GROUP BY emp_no;


------------====>>>>    EXERCISE

SELECT DISTINCT title
FROM titles;



SELECT
   last_name
FROM employees
WHERE last_name LIKE 'E%E'
  GROUP BY last_name;




SELECT
   last_name, COUNT(*)
FROM employees
WHERE last_name LIKE '%q%'
    AND last_name not LIKE '%qu%'
  GROUP BY last_name
  ORDER BY last_name;


SELECT
  count(gender), gender
FROM employees
WHERE first_name
IN (
  'Irena', 'Vidya', 'Maya')
GROUP BY gender;


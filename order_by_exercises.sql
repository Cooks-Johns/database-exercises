USE employees;


--2   Modify your first query to order by first name.
-- The first result should be Irena Reutenauer and
-- the last result should be Vidya Simmen.



SELECT *
FROM employees
WHERE first_name In ('Irena', 'Vidya', 'Maya')
ORDER BY first_name;

SELECT *
FROM employees
WHERE first_name In ('Irena', 'Vidya', 'Maya')
ORDER BY first_name, last_name;


--3

SELECT *
FROM employees
WHERE last_name LIKE '%E%';


--4
SELECT *
FROM employees
WHERE hire_date BETWEEN '1990-01-01' AND '1999-12-31'
AND birth_date LIKE '%-12-25'
ORDER BY birth_date, hire_date DESC;




SELECT *
FROM employees
WHERE  hire_date like "199%";



--5

SELECT *
FROM employees
WHERE birth_date LIKE '%-12-25';



--6

SELECT *
FROM employees
WHERE last_name LIKE '%q%';




----->    PART 2

-- 1

SELECT *
FROM employees
WHERE (first_name = 'Irena'
OR first_name = 'Vidya'
OR first_name = 'Maya')
AND  gender = 'M';


---2
SELECT *
FROM employees
WHERE last_name LIKE 'E%E';




---3



SELECT *
FROM employees
WHERE hire_date BETWEEEN '1990-01-01' AND '1999-12-31';
and birth_date LIKE '%12-25';



SELECT *
FROM employees
WHERE last_name LIKE '%q%' AND
last_name NOT LIKE '%qu%';



SELECT *
FROM employees
ORDER BY first_name, last_name;




























USE employees;


--2
SELECT *
FROM employees
WHERE first_name In ('Irena', 'Vidya', 'Maya');
-- --

--3

SELECT *
FROM employees
WHERE last_name LIKE 'E%';


--4
SELECT *
FROM employees
WHERE hire_date BETWEEN '1990-01-01' AND '1999-12-31';

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
WHERE last_name like '%q%';




----->    PART 2

-- 1

SELECT *
FROM employees
WHERE (first_name = 'Irena'
OR first_name - 'Vidya'
OR first_name = 'Maya')
AND  gender = 'M';


---2
SELECT *
FROM emp




---3
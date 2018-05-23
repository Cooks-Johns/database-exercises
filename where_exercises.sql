USE employees;


--2
SELECT *
FROM employees
WHERE last_name
In (
  -- type in last names 'name', 'name'
  'Irena', 'Vidya', 'Maya'

);


--3

SELECT *
FROM employees
WHERE last_name
IN (
  'E%'
);


--4
SELECT *
FROM employees
WHERE hire_date BETWEEN 1990 AND 1999;



--5




--6




----->    PART 2

-- 1

---2


---3
USE employees;

SELECT *
FROM employees
WHERE last_name
In (
  -- type in last names 'name', 'name'
  'Irena', 'Vidya', 'Maya'

);


USE employees;


-- 2

SELECT d.dept_name AS 'Departent Name',
  concat(e.first_name, ' ', e.last_name) AS 'Department Manager'
FROM employees as e
JOIN dept_manager de
  ON de.emp_no = e.emp_no
JOIN departments d
  ON d.dept_no = de.dept_no
  WHERE de.to_date >= curdate()
  ORDER BY d.dept_name;



            -->>------------>---+--+->


SELECT d.dept_name AS 'Department',
  CONCAT(e.first_name, ' ', e.last_name) AS 'Manager'
FROM employees e
JOIN dept_manager dm
  ON dm.emp_no = e.emp_no
JOIN departments d
  ON d.dept_no = dm.dept_no
  WHERE e.gender = 'F' AND dm.to_date >= now()
  ORDER BY d.dept_name;




-- 3
SELECT CONCAT(em.first_name, ' ', em.last_name) AS full_name, d.dept_name
FROM dept_manager as dmm
JOIN employees as em
  ON em.emp_no = dmm.emp_no
JOIN departments as d
  ON em.emp_no = dmm.emp_no
  WHERE to_date > now();



-- 4
SELECT d.dept_name AS 'Departent Name',
  concat(e.first_name, ' ', e.last_name) AS 'Department Manager'
FROM employees as e
JOIN dept_manager de
  ON de.emp_no = e.emp_no
JOIN departments d
  ON d.dept_no = de.dept_no
  WHERE de.to_date >= curdate()
  ORDER BY d.dept_name;



-- 5
SELECT CONCAT(em.first_name, ' ', em.last_name) AS full_name, d.dept_name
FROM dept_manager as dmm
JOIN employees as em
  ON em.emp_no = dmm.emp_no
JOIN departments as d
 On d.dept_no = em.emp_no;




-- BONUS


SELECT CONCAT(e.first_name, ' ', e.last_name) AS 'Employee',
  d.dept_name


FROM employees as e
LEFT JOIN dept_emp as de
  ON de.emp_no = e.emp_no
JOIN departments as d
  ON d.dept_no = de.dept_no

UNION SELECT CONCAT(e.first_name, ' ', e.last_name) AS full_name
FROM dept_manager as dm
RIGHT JOIN employees as e
  ON e.emp_no = dm.emp_no;




-- Here’s the bonus for the JOIN exercise:
--
-- Use joins along with any MySQL statement
-- we’ve covered so far to answer the following questions:
--   1. Show current average salaries for all
--       employees, grouped by gender, to
--       show if the average is higher for
--       male/female salaries.




--   2. Show historic average salaries for all
--       employees, grouped by gender, to
--       show if the average is higher for
--       male/female salaries.


--
--   3. Show current average salaries of all
--    managers, grouped by gender, to
--     answer if the company pays average
--     manager salaries higher or lower based on gender.



--
--   4. Show historic average salaries of all
--       managers, grouped by gender, to
--       answer if the company pays average
--       manager salaries higher
--       or lower based on gender.







  ---- notes

SELECT CONCAT(em.first_name, ' ', em.last_name) AS full_name
FROM dept_manager as dmm
left JOIN employees as em
  ON em.emp_no = dmm.emp_no;

  SELECT CONCAT(e.first_name, ' ', e.last_name) AS full_name, d.dept_name
FROM employees as e
JOIN dept_emp as de
  ON de.emp_no = e.emp_no
JOIN departments as d
  ON d.dept_no = de.dept_no
LIMIT 10;



-- returns the names of

SELECT d.dept_name, e.first_name, e.last_name
FROM departments d
JOIN dept_manager dm
  ON dm.dept_no = d.dept_no
JOIN employees e
  ON dm.emp_no = e.emp_no

WHERE dm.to_date > now();

--BREAKING DOWN NUM 5
  -- find the current salary of all current managers
  -- salaries - employees (emp_no)
  -- employees -> departments (dept_no)
  -- dept_manager -> departs (dept_no)


-- this will do a complete log of the the history

SELECT *
FROM salaries
JOIN employees ON salaries.emp_no = employees.emp_no
WHERE salaries.to_date > now();




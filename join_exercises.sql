USE employees;

SELECT CONCAT(e.first_name, ' ', e.last_name) AS full_name, d.dept_name
FROM employees as e
JOIN dept_emp as de
  ON de.emp_no = e.emp_no
JOIN departments as d
  ON d.dept_no = de.dept_no
LIMIT 10;



-- returns the names of
-- 2

SELECT CONCAT(em.first_name, ' ', em.last_name) AS full_name, d.dept_name
FROM dept_manager as dmm
JOIN employees as em
  ON em.emp_no = dmm.emp_no
JOIN departments as d
 On d.dept_no = em.emp_no;

-- 3

-- 4

-- 5

5
-- BONUS


SELECT CONCAT(e.first_name, ' ', e.last_name) AS full_name, d.dept_name


FROM employees as e
LEFT JOIN dept_emp as de
  ON de.emp_no = e.emp_no
JOIN departments as d
  ON d.dept_no = de.dept_no

UNION SELECT CONCAT(e.first_name, ' ', e.last_name) AS full_name
FROM dept_manager as dm
RIGHT JOIN employees as e
  ON e.emp_no = dm.emp_no
;
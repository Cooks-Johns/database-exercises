
-- 1

SELECT *
  FROM employees
  WHERE hire_date = '1990-10-22';


-- 2



 SELECT title,
 FROM employees e
 JOIN titles t
  On e.emp_no = t.emp_no
 WHERE emp_no =(
  SELECT first_name, last_name
  FROM employees e2
  WHERE e2.first_name = 'Aamod'

 );


 SELECT first_name, last_name
  FROM employees
  WHERE emp_no =(
  SELECT emp_no
  FROM dept_manager
  WHERE to_date > curdate()
  AND dept_no = (
    SELECT dept_no
    FROM departments
    WHERE dept_name = 'Customer Service'
  )
);

--  3


SELECT first_name, last_name
FROM employees e
JOIN dept_manager dm
  ON dm.emp_no = e.emp_no
  WHERE e.gender = 'F' AND dm.to_date >= curdate();


-- BONUS
--
-- Find all the department names that currently have female managers.
-- department names
-- female managers

 SELECT dept_name
  FROM departments
  WHERE emp_no =(
  SELECT emp_no
  FROM dept_manager
  WHERE to_date > curdate()
  AND dept_no = (
    SELECT dept_no
    FROM departments
    WHERE dept_name = 'Customer Service'
  )
);


-- +-----------------+
-- | dept_name       |
-- +-----------------+
-- | Development     |
-- | Finance         |
-- | Human Resources |
-- | Research        |
-- +-----------------+
-- Find the first and last name of the employee with the highest salary.



-- +------------+-----------+
-- | first_name | last_name |
-- +------------+-----------+
-- | Tokuyasu   | Pesch     |
-- +------------+-----------+



--->  NOTES

SELECT s.name, s.email, s.github_username
FROM students s
JOIN cohorts c
  ON s.cohort_id = c.id
WHERE c.name = 'Ulysses';




SELECT name, email, github_username
WHERE chort__id = (
  SELECT id
  FROM chorts
  WHERE name = 'ulysses'
  );


-- who mangers the customer service department?

SELECT
  CONCAT(e.last_name, ' ,', e.first_name)
  AS name
  FROM emplayees e
  JOIN dept_manager dm
  ON dm.emp_no = e.emp_no
  JOIN departments d
  ON dm.dept_no = d.dept_no
  WHERE d.dept_name = 'Customer Service'
    AND dm.to_date > now();

  --- HARD WAY


SELECT *
  FROM dept_manager
  WHERE to_date > curdate()
  AND dept_no = 'd009';

SELECT *
  FROM departments
  WHERE dept_name = 'Coustmer Service';


---- EASY WAY

SELECT first_name, last_name
  FROM employees
  WHERE emp_no =(
  SELECT emp_no
  FROM dept_manager
  WHERE to_date > curdate()
  AND dept_no = (
    SELECT dept_no
    FROM departments
    WHERE dept_name = 'Customer Service'
  )
);


SELECT *
  FROM employees
  WHERE hire_date = '1990-10-22';
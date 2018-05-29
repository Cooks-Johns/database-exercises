

SELECT s.name, s.email, s.github_username
FROM students s JOIN cohorts c
  ON s.cohort_id = c.id
WHERE c.name = 'Ulysses';




SELECT namem, email, github_username
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
  ON dm.emp_no

  --- HARD WAY


SELECT *
FROM dept_manger
WHERE to_dater > curdate()
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

SELECT

)

);

USE employees;


SELECT CONTACT(first_name, ' ', last_name) AS full_name
FROM employees
GROUP BY full_name
ORDER BY last_ name
LIMIT 25;





------------- EXERCISE



SELECT CONCAT(last_name,' ,', first_name)
AS full_name
FROM employees
LIMIT 10;


SELECT CONCAT(last_name,' ,', first_name,)
AS full_name
FROM employees

LIMIT 10;
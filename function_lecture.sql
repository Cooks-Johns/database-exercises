USE employees;

-- first name like ends with cia

SELECT
  emp_no,
  contcat(first_name, ' ', last_name) AS 'fullName'
  concat(emp_no, 'A'),
  emp_no
FROM employees
LIMIT 10;


--  first name contains sh no matter where

SELECT
  emp_no,
  concat(first_name, '', last_name) AS 'full_name'
FROM employees
WHERE first_name LIKE '%e'
LIMIT 10;


----------------------------------------------->

-- always get the time of the server
--  when working with overseas accounts

SELECT now();



-- Returns the current date as a value in
-- 'YYYY-MM-DD' or YYYYMMDDformat, depending
-- on whether the function is used in
-- a string or numeric context.

SELECT CURDATE();

SELECT CURDATE() + 0;



SELECT curtime();



-- UNIX_TIMESTAMP() & UNIX_TIMESTAMP(date)
-- The UNIX_TIMESTAMP() function is used to
-- represent time as an integer. It will return
-- the number of seconds since midnight January 1st,
-- 1970. If you pass a date time value to
--  UNIX_TIMESTAMP(),it will give you the number
--   of seconds from the unix epoch to that date.


SELECT CONCAT(
     'Teaching people to code for ',
     UNIX_TIMESTAMP() - UNIX_TIMESTAMP('2014-02-04'),
     ' seconds'
     );


SELECT CONCAT(
     'Teaching people to code for ',
     (UNIX_TIMESTAMP() - UNIX_TIMESTAMP('2014-02-04')) / 31536000,
     ' years'
);

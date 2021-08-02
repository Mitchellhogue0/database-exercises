USE employees;

SELECT first_name, last_name, hire_date
FROM employees
WHERE emp_no IN (
    SELECT emp_no
    FROM employees
    WHERE emp_no = '101010'
)
LIMIT 10;
# Find all the employees with the same hire date as employee 101010 using a subquery
SELECT emp_no, hire_date
FROM employees
WHERE hire_date IN (
    SELECT hire_date
    FROM employees
    WHERE hire_date = '1990-10-22'
);

# Find all the titles held by all employees with the first name Aamod
SELECT first_name, title
FROM employees
JOIN titles t on employees.emp_no = t.emp_no
WHERE first_name = 'Aamod';

# Find all the current department managers that are female.
SELECT CONCAT(first_name, ' ', last_name) as Manager, gender
FROM employees
JOIN dept_manager dm on employees.emp_no = dm.emp_no
WHERE gender = 'F' AND to_date = '9999-01-01';

# *BONUS* Find all the department names that currently have female managers.
SELECT CONCAT(first_name, ' ', last_name) as Manager, gender, dept_name as Department
FROM employees
JOIN dept_emp de on employees.emp_no = de.emp_no
JOIN departments d on d.dept_no = de.dept_no
JOIN dept_manager dm on employees.emp_no = dm.emp_no
WHERE gender = 'F' AND dm.to_date = '9999-01-01';

# Find the first and last name of the employee with the highest salary.
SELECT first_name, last_name, salary
FROM employees
JOIN salaries s on employees.emp_no = s.emp_no
ORDER BY salary DESC
LIMIT 1;
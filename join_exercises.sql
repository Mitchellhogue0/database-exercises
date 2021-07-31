USE employees;

SELECT CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager', d.dept_name as 'Department Name'
FROM employees as e
         JOIN dept_manager as de
              ON de.emp_no = e.emp_no
         JOIN departments as d
              ON d.dept_no = de.dept_no
WHERE de.to_date = '9999-01-01' AND e.gender = 'F';

# Find the current titles of employees currently working in the Customer Service department.
SELECT t.title as Title, COUNT(e.emp_no) as Total
FROM dept_emp as e
JOIN titles t on e.emp_no = t.emp_no
WHERE dept_no = 'd009'
GROUP BY t.title;

SELECT * FROM departments;

# Find the current salary of all current managers.
SELECT d.dept_name as 'Department Name', CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager', s.salary as 'Salary'
FROM employees as e
         JOIN dept_manager as de
              ON de.emp_no = e.emp_no
         JOIN departments as d
              ON d.dept_no = de.dept_no
         JOIN salaries as s
              ON s.emp_no = e.emp_no
WHERE de.to_date = '9999-01-01';





SELECT CONCAT(first_name, ' ', last_name) as Employee, d.dept_name as Department,
       CONCAT(e.first_name, ' ', e.last_name) AS Manager
FROM employees as e
          JOIN dept_manager as de
              ON de.emp_no = e.emp_no
         JOIN departments as d
              ON d.dept_no = de.dept_no
WHERE de.to_date = '9999-01-01';
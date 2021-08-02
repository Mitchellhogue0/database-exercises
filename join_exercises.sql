USE employees;
# write a query that shows each department along with the name of the current manager for that department.
# Find the name of all departments currently managed by women.
SELECT CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager', d.dept_name as 'Department Name'
FROM employees as e
         JOIN dept_manager as de
              ON de.emp_no = e.emp_no
         JOIN departments as d
              ON d.dept_no = de.dept_no
WHERE de.to_date = '9999-01-01' AND e.gender = 'F';

# Find the current titles of employees currently working in the Customer Service department.
SELECT title, count(*) Total
from titles as t
         join dept_emp de on t.emp_no = de.emp_no
where t.to_date = '9999-01-01' and de.to_date ='9999-01-01' and dept_no = 'd009'
group by title;

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
WHERE de.to_date = '9999-01-01' AND s.to_date = '9999-01-01'
ORDER BY d.dept_name;




# *BONUS*
SELECT CONCAT(first_name, ' ', last_name) as Employee, d.dept_name as Department,
       CONCAT(e.first_name, ' ', e.last_name) AS Manager
FROM employees as e
          JOIN dept_manager as de
              ON de.emp_no = e.emp_no
         JOIN departments as d
              ON d.dept_no = de.dept_no
WHERE de.to_date = '9999-01-01';
USE employees;

# Find all employees with first names 'Irena', 'Vidya', or 'Maya'
SELECT * FROM employees
WHERE first_name = 'Irena' OR first_name = 'Vidya' OR first_name = 'Maya' AND gender = 'M'
ORDER BY last_name, first_name DESC;


# Find all employees whose last name starts with 'E'
SELECT * FROM employees
WHERE last_name LIKE '%e'
ORDER BY emp_no DESC;

# Find all employees with a 'q' in their last name
SELECT * FROM employees
WHERE last_name LIKE '%q%';

# Find all employees whose last name starts or ends with 'E'
SELECT * FROM employees
WHERE last_name LIKE '%e' OR 'e%';

# Duplicate the previous query and update it to find all employees whose last name starts and ends with 'E'
SELECT * FROM employees
WHERE last_name LIKE '%e' AND last_name LIKE 'e%';

# Find all employees with a 'q' in their last name but not 'qu'
SELECT * FROM employees
WHERE last_name LIKE '%q%' AND last_name NOT LIKE  '%qu%';
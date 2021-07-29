USE employees;

# Find all employees with first names 'Irena', 'Vidya', or 'Maya'
SELECT * FROM employees
WHERE first_name = 'Irena' OR first_name = 'Vidya' OR first_name = 'Maya' AND gender = 'M'
ORDER BY last_name, first_name DESC;


# Find all employees whose last name starts with 'E'
# Use concat() to combine their first and last name together as a single column in your results.
SELECT first_name, last_name, CONCAT(first_name, ' ', last_name)
FROM employees
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

# Find all employees hired in the 90s and born on Christmas
# Change the query such that the first result is the oldest employee who was hired last
# use datediff() to find how many days they have been working at the company
SELECT DATEDIFF(curdate(), hire_date) FROM employees
WHERE DAY(birth_date) = '25' AND MONTH(birth_date) = '12' AND hire_date BETWEEN '1990-1-1' AND '1999-12-31'
ORDER BY birth_date, hire_date DESC;

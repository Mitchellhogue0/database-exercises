USE employees;

# use DISTINCT to find the unique titles in the titles table
SELECT DISTINCT title from titles;

# Update the query to find just the unique last names that start and end with 'E' using GROUP BY
SELECT first_name, last_name FROM employees
WHERE last_name LIKE '%e' AND last_name LIKE 'e%'
GROUP BY first_name, last_name;

# Find the unique last names with a 'q' but not 'qu'
SELECT last_name, COUNT(last_name) FROM employees
WHERE last_name LIKE '%q%' AND last_name NOT LIKE  '%qu%'
GROUP BY last_name;

# GROUP BY to find the number of employees for each gender with those names
SELECT gender, COUNT(*) FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
GROUP BY gender;
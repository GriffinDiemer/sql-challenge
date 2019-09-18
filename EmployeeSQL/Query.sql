SELECT employees.emp_no, employees.last_name, employees.first_name, employees.gender , salaries.salary
FROM employees
LEFT JOIN salaries ON employees.emp_no = salaries.emp_no

SELECT emp_no, last_name, first_name, hire_date FROM employees
WHERE hire_date >= '1/1/1986' AND hire_date <= '12/31/1986'


SELECT dm.dept_no, d.dept_name, dm.emp_no, e.last_name, e.first_name, dm.from_date, dm.to_date
FROM dept_manager dm
LEFT JOIN departments d ON dm.dept_no = d.dept_no
LEFT JOIN employees e ON dm.emp_no = e.emp_no

SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees e
LEFT JOIN dept_emp de ON de.emp_no = e.emp_no
LEFT JOIN departments d ON d.dept_no = de.dept_no

SELECT first_name, last_name
FROM employees
WHERE first_name = 'Hercules' 
AND last_name like 'B%'

SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees e
INNER JOIN dept_emp de ON de.emp_no = e.emp_no
INNER JOIN departments d ON d.dept_no = de.dept_no
WHERE de.dept_no IN
(
  SELECT dept_no
  FROM departments d
  WHERE dept_name = 'Sales'
)

SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees e
INNER JOIN dept_emp de ON de.emp_no = e.emp_no
INNER JOIN departments d ON d.dept_no = de.dept_no
WHERE de.dept_no IN
(
  SELECT dept_no
  FROM departments d
  WHERE dept_name = 'Sales' 
	OR dept_name = 'Development'
)


SELECT last_name, count(*) AS count 
FROM employees 
GROUP BY last_name 
ORDER BY count DESC

SELECT * 
FROM employees
WHERE emp_no = 499942


SELECT employees.emp_no, employees.last_name, employees.first_name, employees.gender, salaries.salary
FROM employees
INNER JOIN salaries
ON employees.emp_no = salaries.emp_no;

SELECT COUNT (*)
FROM employees
JOIN salaries
ON employees.emp_no = salaries.emp_no;

SELECT * 
FROM employees
WHERE hire_date LIKE '1986%';

SELECT * FROM dept_emp
SELECT * FROM dept_manager
SELECT * FROM employees

SELECT dept_manager.dept_no, 
departments.dept_name, 
employees.emp_no, 
employees.first_name,
employees.last_name,
dept_manager.from_date,
dept_manager.to_date	
FROM dept_manager
INNER JOIN employees
ON dept_manager.emp_no = employees.emp_no
INNER JOIN departments
ON dept_manager.dept_no = departments.dept_no;



SELECT employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM employees
INNER JOIN dept_emp
ON employees.emp_no = dept_emp.emp_no
INNER JOIN departments 
ON dept_emp.dept_no = departments.dept_no;

SELECT * FROM employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B%';

SELECT e.first_name, 
e.last_name,
e.emp_no,
d.dept_name
FROM employees AS e
INNER JOIN dept_emp AS de
ON e.emp_no = de.emp_no
INNER JOIN departments AS d
ON de.dept_no = d.dept_no
WHERE d.dept_name = 'Sales'


SELECT e.first_name, 
e.last_name,
e.emp_no,
d.dept_name
FROM employees AS e
INNER JOIN dept_emp AS de
ON e.emp_no = de.emp_no
INNER JOIN departments AS d
ON de.dept_no = d.dept_no
WHERE d.dept_name IN ('Sales','Development');

SELECT last_name, COUNT (last_name) 
FROM employees
GROUP BY last_name
ORDER BY COUNT(last_name) DESC;




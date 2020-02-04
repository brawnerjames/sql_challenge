CREATE TABLE departments(
	dept_no VARCHAR NOT NULL,
	dept_name VARCHAR
);

CREATE TABLE dept_emp (
	emp_no INT,
	dept_no VARCHAR,
	from_date VARCHAR,
	to_date VARCHAR
);

SELECT * FROM dept_emp

CREATE TABLE dept_manager (
	dept_no VARCHAR,
	emp_no INTEGER,
	from_date VARCHAR,
	to_date VARCHAR
);

CREATE TABLE employees(
	emp_no INTEGER,
	birth_date VARCHAR,
	first_name VARCHAR(50),
	last_name VARCHAR(50),
	gender VARCHAR(1),
	hire_date VARCHAR
);

CREATE TABLE salaries(
	emp_no INTEGER,
	salary INTEGER,
	from_date VARCHAR,
	to_date VARCHAR
);

CREATE TABLE titles(
	emp_no INTEGER,
	title VARCHAR,
	from_date VARCHAR,
	to_date VARCHAR
);

SELECT * FROM salaries

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




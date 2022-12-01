SELECT 
	employees.emp_no,
	employees.last_name,
	employees.first_name,
	employees.sex,
	salaries.salary
	FROM employees
	JOIN salaries
	ON employees.emp_no = salaries.emp_no;

SELECT
	first_name,
	last_name,
	hire_date
	FROM employees
	WHERE date_part('year', hire_date) = 1986;
	
SELECT
	dept_manager.dept_no,
	departments.dept_name,
	dept_manager.emp_no,
	employees.last_name,
	employees.first_name
	FROM dept_manager
	JOIN employees
	ON dept_manager.emp_no = employees.emp_no
	JOIN departments
	ON dept_manager.dept_no = departments.dept_no;
	
SELECT
	employees.first_name,
	employees.last_name,
	employees.sex
	FROM employees
	WHERE first_name = 'Hercules'
	AND last_name like 'B%';
	
SELECT
	employees.emp_no,
	employees.last_name,
	employees.first_name
	FROM employees
	WHERE emp_no in
	(
		SELECT emp_no
		FROM dept_emp
		WHERE dept_no = 'd007'
	);
	
SELECT
	employees.emp_no,
	employees.last_name,
	employees.first_name,
	dept_emp.dept_no
	FROM employees
	JOIN dept_emp
	ON employees.emp_no = dept_emp.emp_no
	WHERE dept_emp.dept_no = 'd005'
	OR dept_emp.dept_no = 'd007';
	
SELECT
	last_name, COUNT(last_name) AS freq_count
	FROM employees
	GROUP BY last_name
	ORDER BY freq_count DESC;
	
--List employee number, last name, first name, sex, and salary for each employee:
SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
FROM employees as e
INNER JOIN salaries as s ON
e.emp_no=s.emp_no;

--List first name, last name, and hire date for the meployees hired in 1986
SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date like '%1986';

--List manager of each department with their department number, department name, employee number, last name, and first name
SELECT dm.dept_no, d.dept_name, dm.emp_no, e.last_name, e.first_name
FROM departments as d
	JOIN dept_manager as dm
	ON d.dept_no = dm.dept_no
		JOIN employees as e
		ON dm.emp_no = e.emp_no;

--List departmentment number, employee number, last name, first name, and department name for each employee
CREATE VIEW emp_and_dept as
SELECT de.dept_no, e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees as e
	JOIN dept_emp as de
	ON e.emp_no = de.emp_no
		JOIN departments as d
		ON de.dept_no = d.dept_no
		
--List first name, last name, and sex for all employees named Hercules B%
SELECT first_name, last_name, sex
FROM employees
WHERE first_name like 'Hercules' and last_name like 'B%';

--List employee number, last name, and first name for each employee in sales
SELECT emp_no, last_name, first_name
FROM employees 
WHERE emp_no IN
(
	SELECT emp_no
	FROM dept_emp
	WHERE dept_no IN
	(
		SELECT dept_no
		FROM departments
		WHERE dept_name = 'Sales'));
		
--List employee number, last name, first name, and department name for each employee in Sales and Development
SELECT de.dept_no, e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees as e
	JOIN dept_emp as de
	ON e.emp_no = de.emp_no
		JOIN departments as d
		ON de.dept_no = d.dept_no
		WHERE d.dept_name = 'Sales' or d.dept_name = 'Development';

--List frequency counts of all employee last names
SELECT last_name, COUNT(last_name) AS name_counts
FROM employees
GROUP BY last_name
ORDER BY name_counts DESC;

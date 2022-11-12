CREATE TABLE employees (
	emp_no int PRIMARY KEY,
	emp_title varchar (30),
	birth_date varchar (10),
	first_name varchar (30),
	last_name varchar (30),
	sex varchar (1),
	hire_date varchar (10)
);

CREATE TABLE departments (
	dept_no varchar (10) PRIMARY KEY,
	dept_name varchar (30)
);

CREATE TABLE titles (
	title_id varchar (10) PRIMARY KEY,
	title varchar (30)
);

CREATE TABLE salaries (
	emp_no int,
	salary int
);

CREATE TABLE dept_emp(
	emp_no int,
	dept_no varchar (10)
);

CREATE TABLE dept_manager (
	dept_no varchar (30),
	emp_no int
);



-- Create Tables based on data folder csv files, in this order due to dependencies
CREATE TABLE departments (
	dept_no varchar(10) PRIMARY KEY,
	dept_name varchar(50) NOT NULL
);

CREATE TABLE titles (
	title_id varchar(10) PRIMARY KEY,
	title varchar(50) NOT NULL
);

CREATE TABLE employees (
	emp_no INT PRIMARY KEY,
	emp_title_id varchar(10) NOT NULL,
	FOREIGN KEY (emp_title_id) REFERENCES titles(title_id),
	birth_date DATE NOT NULL,
	first_name varchar(50) NOT NULL,
	last_name varchar(50) NOT NULL,
	sex varchar(10) NOT NULL,
	hire_date DATE NOT NULL
);


CREATE TABLE dept_manager (
	dept_no varchar(10) NOT NULL,
	emp_no INT NOT NULL,
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

CREATE TABLE dept_emp (
	emp_no INT NOT NULL,
	dept_no varchar(10) NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

CREATE TABLE salaries (
	emp_no INT NOT NULL,
	salary MONEY NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);


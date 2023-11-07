create table titles (
	title_id VARCHAR(5) NOT NULL,
	title VARCHAR(40) NOT NULL,
	primary key (title_id)
);

create table employees (
	emp_no INT NOT NULL,
	emp_title VARCHAR(5) NOT NULL,
	birth_date DATE NOT NULL,
	first_name VARCHAR(40) NOT NULL,
	last_name VARCHAR(40) NOT NULL,
	sex VARCHAR(1) NOT NULL,
	hire_date DATE NOT NULL,
	primary key (emp_no),
	foreign key (emp_title) references titles (title_id)
);

create table departments (
	dept_no VARCHAR(4) NOT NULL,
	dept_name VARCHAR(40) NOT NULL,
	primary key (dept_no)
);

create table dept_manager (
	dept_no VARCHAR(4) NOT NULL,
	emp_no INT NOT NULL,
	foreign key (dept_no) references departments (dept_no),
    foreign key (emp_no) references employees (emp_no),
	primary key (emp_no, dept_no)
);

create table dept_emp (
	emp_no INT NOT NULL,
	dept_no VARCHAR(4) NOT NULL,
    foreign key (emp_no) references employees (emp_no),
    foreign key (dept_no) references departments (dept_no),
	primary key (emp_no, dept_no)
);

create table salaries (
	emp_no INT NOT NULL,
	salary INT NOT NULL,
	primary key (emp_no),
    foreign key (emp_no) references employees (emp_no)
);



--creating all tables


CREATE TABLE departments (
  dept_no varchar(255) NOT NULL,
  dept_name varchar(255) not NULL);
ALTER TABLE departments
ADD PRIMARY KEY (dept_no)
;

CREATE TABLE titles (
  title_id varchar(255) NOT NULL,
  title varchar(255) not NULL,
  PRIMARY KEY (title_id)
);


CREATE TABLE employees (
  emp_no varchar(255) NOT NULL,
  emp_title varchar(255) not NULL,
  birth_date varchar(255),
  first_name varchar(255),
  last_name varchar(255),
  sex varchar(255),
  hire_date varchar(255),
  primary key (emp_no),
  foreign key (emp_title) references titles (title_id)
);

CREATE TABLE dept_emp (
  emp_no varchar(255) NOT NULL,
  dept_no varchar(255) not NULL,
  foreign key (emp_no) references employees(emp_no),
  foreign key (dept_no) references departments(dept_no)
  );

CREATE TABLE dept_manager (
  dept_no varchar(255) NOT NULL,
  emp_no varchar(255) not NULL,
  foreign key (dept_no) references departments(dept_no),
  foreign key (emp_no) references employees(emp_no)
);


CREATE TABLE salaries (
  emp_no varchar(255) NOT NULL,
  salary varchar(255) not NULL,
  foreign key (emp_no) references employees(emp_no)
);

SELECT * FROM public.departments;
SELECT * FROM public.dept_emp;
SELECT * FROM public.dept_manager;
SELECT * FROM public.employees;
SELECT * FROM public.salaries;
SELECT * FROM public.titles;

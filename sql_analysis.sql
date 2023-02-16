select employees.emp_no, employees.first_name, employees.last_name, employees.sex, salaries.salary
from employees
left join salaries on employees.emp_no = salaries.emp_no
--working 1
---------------


select first_name, last_name, hire_date
from employees 
where hire_date like '%1986%'
--working 2
---------------------


select dept_manager.dept_no, dept_manager.emp_no, departments.dept_name, employees.first_name, employees.last_name
from dept_manager
inner join departments on dept_manager.dept_no = departments.dept_no
inner join employees on dept_manager.emp_no = employees.emp_no
--working 3
-------------------


select dept_emp.emp_no, dept_emp.dept_no, employees.first_name, employees.last_name, departments.dept_name
from dept_emp
inner join employees on dept_emp.emp_no = employees.emp_no
inner join departments on departments.dept_no = dept_emp.dept_no
--working 4
--------------------


select employees.first_name, employees.last_name, employees.sex
from employees
where last_name like 'B%' and first_name like '%Hercules%'
--working 5
-----------------


select dept_emp.emp_no, employees.first_name, employees.last_name
from employees
inner join dept_emp on employees.emp_no = dept_emp.emp_no
where dept_emp.dept_no like '%d007%'
-- working 6
--------------------

select employees.emp_no, employees.first_name, employees.last_name, departments.dept_name
from employees
inner join dept_emp on employees.emp_no = dept_emp.emp_no
inner join departments on dept_emp.dept_no = departments.dept_no
where dept_name like '%Sales' or dept_name like '%Development%'
--working 7
------------------


select 
	employees.last_name,
	count(employees.last_name) as name_count
from employees
group by employees.last_name
order by name_count desc
--working 8
------------------


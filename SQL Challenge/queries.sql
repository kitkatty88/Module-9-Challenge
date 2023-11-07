--List the employee number, last name, first name, sex, and salary of each employee.
select s.emp_no, e.first_name, e.last_name, e.sex, s.salary
from employees as e
inner join salaries as s
on (s.emp_no = e.emp_no)
order by 1;

--List the first name, last name, and hire date for the employees who were hired in 1986.
select first_name, last_name, hire_date 
from employees 
where hire_date between '01-01-1986' and '12-31-1986';

--List the manager of each department along with their department number, department name, employee number, last name, and first name
select dm.dept_no, d.dept_name, dm.emp_no,  e.first_name, e.last_name
from dept_manager as dm
inner join departments as d
on (d.dept_no= dm.dept_no)
inner join employees as e
on (e.emp_no = dm.emp_no)
order by 1;

--List the department number for each employee along with that employee’s employee number, last name, first name, and department name
select e.emp_no, e.first_name, e.last_name, d.dept_name
from employees as e
inner join dept_emp as de
on e.emp_no = de.emp_no
inner join departments as d
on de.dept_no = d.dept_no
order by 1;

--List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B
select e.first_name, e.last_name, e.sex
from employees as e
where (e.first_name = 'Hercules') and (lower(e.last_name) like 'b%');

--List each employee in the Sales department, including their employee number, last name, and first name
select d.dept_name, e.emp_no, e.first_name, e.last_name
from employees as e
inner join dept_emp as de
on e.emp_no = de.emp_no
inner join departments as d
on de.dept_no = d.dept_no
where lower(d.dept_name) = 'sales';

--List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name
select d.dept_name, e.emp_no, e.first_name, e.last_name
from employees as e
inner join dept_emp as de
on e.emp_no = de.emp_no
inner join departments as d
on de.dept_no = d.dept_no
where lower(d.dept_name) = 'sales' or (lower(d.dept_name) = 'development')
order by 1;

--List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name)
select last_name, count (last_name)
from employees
group by last_name
order by 1 desc;


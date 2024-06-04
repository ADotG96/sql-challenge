--List the employee number, last name, first name, sex, and salary of each employee.
select * from employees;
select * from salaries;

SELECT em.emp_no, em.last_name, em.first_name, em.sex, sal.salary
from employees em
join salaries sal on em.emp_no = sal.emp_no;

--List the first name, last name, and hire date for the employees who were hired in 1986.
SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date >= '1/1/1986'
	AND hire_date < '1/1/1987'
ORDER BY hire_date ASC;

--List the manager of each department along with their department number, department name, employee number, last name, and first name.
Select * from dept_manager;
select * from departments;

select dep_man.*,dep.dept_name, em.first_name, em.last_name
from employees em
join dept_manager dep_man on em.emp_no = dep_man.emp_no
join departments dep on dep_man.dept_no = dep.dept_no;

--List the department number for each employee along with that employee’s employee number, last name, first name, and department name.
select dep_em.dept_no, dep.dept_name, em.emp_no, em.last_name, em.first_name 
from employees em
join dept_employees dep_em on em.emp_no = dep_em.emp_no
join departments dep on dep_em.dept_no = dep.dept_no;

--List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.
select first_name, last_name, sex
from employees
where first_name = 'Hercules' AND last_name like 'B%';

--List each employee in the Sales department, including their employee number, last name, and first name.
select dep_em.emp_no, em.last_name, em.first_name
from dept_employees dep_em 
join employees em on dep_em.emp_no = em.emp_no
where dep_em.dept_no = 'd007';

--List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.
select dep_em.emp_no, em.last_name, em.first_name, dep.dept_name
from dept_employees dep_em 
join employees em on dep_em.emp_no = em.emp_no
join departments dep on dep_em.dept_no = dep.dept_no
where dep_em.dept_no = 'd007' OR dep_em.dept_no = 'd005';

--List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).
select last_name, count(*) as frequency
from employees
group by last_name
order by frequency desc;
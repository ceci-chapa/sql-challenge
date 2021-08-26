SELECT *
FROM departments;

--List the following details of each employee: employee number, last name, first name, sex, 
--and salary.
SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
FROM employees e
JOIN salaries s
ON (e.emp_no = s.emp_no)
ORDER BY "emp_no" ASC;

--List first name, last name, and hire date for employees who were hired in 1986.
SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date::text LIKE '1986%';

--List the manager of each department with the following information: department number,
--department name, the manager's employee number, last name, first name.
Select dm.dept_no, d.dept_name, e.emp_no, e.last_name, e.first_name
FROM dept_manager AS dm
INNER JOIN employees AS e
ON (dm.emp_no = e.emp_no)

INNER JOIN departments AS d
ON (dm.dept_no = d.dept_no);

--List the department of each employee with the following information: employee number, 
--last name, first name, and department name.


--List first name, last name, and sex for employees whose first name is "Hercules" and 
--last names begin with "B."


--List all employees in the Sales department, including their employee number, last name, 
--first name, and department name.


--List all employees in the Sales and Development departments, including their employee number, 
--last name, first name, and department name.


--In descending order, list the frequency count of employee last names, i.e., 
--how many employees share each last name.


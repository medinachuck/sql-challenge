-- 1. List the following details of each employee: employee number, last name, first name, sex, and salary.
-- SELECT 
-- 	"Employees".emp_no
-- 	,"Employees".last_name
-- 	,"Employees".first_name
-- 	,"Employees".sex
-- 	,"Salaries".salary
-- FROM
-- 	"Salaries" JOIN "Employees" ON "Employees".emp_no = "Salaries".emp_no;

-- 2. List first name, last name, and hire date for employees who were hired in 1986.
-- SELECT
-- 	first_name
-- 	,last_name
-- 	,hire_date
-- FROM "Employees" 
-- WHERE  hire_date >= '1986-01-01' 
--  AND  hire_date <=  '1986-12-31'


-- 3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
-- SELECT 
-- 	dept_manager.dept_no
-- 	,"Departments".dept_name
-- 	,dept_manager.emp_no
-- 	,"Employees".last_name
-- 	,"Employees".first_name
	
-- FROM dept_manager
-- JOIN "Departments" ON "Departments".dept_no = dept_manager.dept_no
-- JOIN "Employees" ON "Employees".emp_no = dept_manager.emp_no

-- 4. List the department of each employee with the following information: employee number, last name, first name, and department name.
-- SELECT 
-- 	"Employees".emp_no
-- 	,"Employees".last_name
-- 	,"Employees".first_name
-- 	,"Departments".dept_name
-- FROM "Employees"
-- JOIN "dept_emp" ON "dept_emp".emp_no = "Employees".emp_no
-- JOIN "Departments" ON "Departments".dept_no = dept_emp.dept_no


-- 5. List first name, last name, and sex for employees whose first na me is "Hercules" and last names begin with "B."
-- SELECT 
-- 	first_name
-- 	,last_name
-- 	,sex
-- FROM 
-- 	"Employees"
-- WHERE 1=1
-- 	AND first_name = 'Hercules'
-- 	AND last_name LIKE 'B%';
	
-- 6. List all employees in the Sales department, including their employee number, last name, first name, and department name.
-- SELECT 
-- 	"Employees".emp_no
-- 	,"Employees".last_name
-- 	,"Employees".first_name
-- 	,"Departments".dept_name
-- FROM "Employees"
-- JOIN "dept_emp" ON "dept_emp".emp_no = "Employees".emp_no
-- JOIN "Departments" ON "Departments".dept_no = dept_emp.dept_no
-- WHERE "Departments".dept_name = 'Sales'

-- 7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
-- SELECT 
-- 	"Employees".emp_no
-- 	,"Employees".last_name
-- 	,"Employees".first_name
-- 	,"Departments".dept_name
-- FROM "Employees"
-- JOIN "dept_emp" ON "dept_emp".emp_no = "Employees".emp_no
-- JOIN "Departments" ON "Departments".dept_no = dept_emp.dept_no
-- WHERE "Departments".dept_name = 'Sales' OR "Departments".dept_name = 'Development'
-- 8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
-- SELECT 
-- 	last_name
-- 	,COUNT(last_name)
-- FROM
-- 	"Employees"
-- GROUP BY last_name
-- ORDER BY COUNT(last_name) DESC

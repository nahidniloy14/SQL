#11 
--  Write a query to display job title, employee name, and the difference between salary of the employee and minimum salary for the job
-- Use employees;
-- Select j.job_title,e.first_name AS Employee_Name, j.max_salary-j.min_salary AS Salary_Difference,j.min_Salary
-- From employees e
-- Join jobs j
-- Using (job_id)

#13
-- Write a query to display the first name, last name, hire date, salary of the manager for all managers whose experience is more than 15 years.
-- USE employees;
-- SELECT e.first_name,e.last_name,e.hire_date,e.salary
-- From employees 
-- Natural JOIN departments 
-- Where hire_date<'01-01-2008'

#12
-- Write a query to display the job history that were done by any employee who is currently drawing more than 10000 of salary
-- USE employees;
-- SELECT j.* 
-- From JOB_HISTORY j
-- JOIN Employee e 
-- ON e.Employee_id = j.employee_id
-- WHERE salary>10000

#10
-- Write a query to display the job title and average salary of employees.
-- SELECT job_title, AVG(salary) 
-- FROM employees 
-- NATURAL JOIN jobs 
-- GROUP BY job_title;

#9
-- Write a query to display the department name, manager name, and city.
-- SELECT d.department_name, e.first_name, l.city 
-- FROM departments d 
-- JOIN employees e 
-- ON (d.manager_id = e.employee_id) 
-- JOIN locations l USING (location_id);

# 7
-- Write a query to find the employee ID, job title, number of days between ending date and starting date for all jobs in department 90 from job history
-- SELECT employee_id, job_title, end_date-start_date Days FROM job_history 
-- NATURAL JOIN jobs 
-- WHERE department_id=90;

-- Write a query to get the department name and number of employees in the department.
-- SELECT department_name AS 'Department Name', 
-- COUNT(*) AS 'No of Employees' 
-- FROM departments 
-- INNER JOIN employees 
-- ON employees.department_id = departments.department_id 
-- GROUP BY departments.department_id, department_name 
-- ORDER BY department_name;

# Name of cities Dhaka 
-- Use world;
-- Select c1.Name,c1.CountryCode,c2.Population,count(*) AS 'Number Of Cities'
-- From city c1
-- JOIN city c2
-- ON (c2.Name='Dhaka')
-- Where c2.population>1000000

# Write a query to find the name (first_name, last_name) and hire date of the employees who was hired after 'Jones'.
-- SELECT e.first_name, e.last_name, e.hire_date 
-- FROM employees e 
-- JOIN employees davies 
-- ON (davies.last_name = 'Jones') 
-- WHERE davies.hire_date < e.hire_date

# Show Full Name
-- USE store;
-- SELECT first_name,last_name,Concat(first_name,' ',last_name)as full_name
-- From customers

# Find 5th Most populas Country
-- Use world;
-- Select Name 
-- from country
-- order by Population DESC
-- LIMIT 4,1


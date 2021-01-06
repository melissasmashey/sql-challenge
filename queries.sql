----Data Analysis----
--Question 1--
SELECT employees.emp_no, employees.last_name, employees.first_name, employees.sex,
salaries.salary
FROM employees
INNER JOIN salaries ON
employees.emp_no = salaries.emp_no;

--Question 2--
SELECT first_name, last_name, hire_date from employees
WHERE hire_date > '1985-12-31'
AND hire_date < '1987-01-01';

--Question 3--
SELECT deptartment_managers.dept_no, 
	   departments.dept_name,
	   deptartment_managers.emp_no,
	   employees.last_name,
	   employees.first_name
	   FROM deptartment_managers
INNER JOIN departments ON
deptartment_managers.dept_no = departments.dept_no
INNER JOIN employees ON
deptartment_managers.emp_no = employees.emp_no;

--Question 4--
SELECT employees.emp_no, 
	   employees.last_name, 
	   employees.first_name,
	   departments.dept_name
FROM employees
INNER JOIN deptartment_managers ON
employees.emp_no = deptartment_managers.emp_no
INNER JOIN departments ON
deptartment_managers.dept_no = departments.dept_no;

--Question 5--
SELECT * FROM employees
WHERE first_name = 'Hercules'
AND last_name LIKE 'B%';

--Question 6--
SELECT employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM employees 
JOIN deptartment_employees ON
employees.emp_no = deptartment_employees.emp_no
INNER JOIN departments ON
deptartment_employees.dept_no = departments.dept_no
WHERE dept_name = 'Sales';

--Question 7--
SELECT employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM employees
JOIN deptartment_employees ON
employees.emp_no = deptartment_employees.emp_no
INNER JOIN departments ON
deptartment_employees.dept_no = departments.dept_no
WHERE dept_name = 'Sales' OR 
	  dept_name = 'Development';

--Question 8 --
SELECT last_name, COUNT(last_name) FROM Employees
GROUP BY last_name
ORDER BY count(last_name) desc;

--Epilogue--"employee is April Foolsday"--
SELECT * FROM employees
WHERE emp_no = '499942'


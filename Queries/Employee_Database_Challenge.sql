-- Deliverable 1: The Number of Retiring Employees by Title 
SELECT * FROM employees;
SELECT * FROM titles;

-- Create retirement titles table
SELECT e.emp_no,
	e.first_name,
	e.last_name,
	t.title,
	t.from_date,
	t.to_date
INTO retirement_titles
FROM employees AS e
INNER JOIN titles AS t
ON (e.emp_no = t.emp_no)
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY e.emp_no;

SELECT * FROM retirement_titles;

-- Use Distinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (rt.emp_no) rt.emp_no,
rt.first_name,
rt.last_name,
rt.title,
rt.to_date
INTO unique_titles
FROM retirement_titles AS rt
WHERE to_date = '9999-01-01'
ORDER BY emp_no, to_date DESC;

SELECT * FROM unique_titles;

-- Employees about to retire
SELECT COUNT (ut.emp_no), ut.title
INTO retiring_titles
FROM unique_titles AS ut
GROUP BY ut.title
ORDER BY ut.count DESC;

SELECT * FROM retiring_titles;



-- Deliverable 2: The Employees Eligible for the Mentorship Program
SELECT * FROM employees;
SELECT * FROM dept_emp;
SELECT * FROM titles;

SELECT DISTINCT ON (e.emp_no) e.emp_no,
	e.first_name,
	e.last_name,
	e.birth_date,
	de.from_date,
	de.to_date,
	t.title
INTO mentorship_table
FROM employees AS e
	INNER JOIN dept_emp AS de
		ON (e.emp_no = de.emp_no)
			INNER JOIN titles AS t
				ON (e.emp_no = t.emp_no)
WHERE de.to_date = '9999-01-01'
AND (birth_date BETWEEN '1965-01-01' AND '1965-12-31')
ORDER BY emp_no;

SELECT * FROM mentorship_table;


--get the number of eligible mentors grouped by title
SELECT COUNT(title) count, title
INTO mentor_count
FROM mentorship_table
GROUP BY (title) 
ORDER BY count DESC

SELECT * FROM mentor_count;

-- Get list of current employees eligible for retirement 
SELECT DISTINCT ON (ce.emp_no) ce.emp_no,
	ce.first_name,
	ce.last_name,
	t.title,
	t.from_date,
    t.to_date
INTO current_retiring_employees
FROM current_emp AS ce
	INNER JOIN titles AS t
		ON (ce.emp_no = t.emp_no)
ORDER BY emp_no, from_date DESC;

SELECT * FROM current_retiring_employees

-- get a table of the title count for current employees
SELECT COUNT(title) count, title
INTO retiring_employee_count
FROM current_retiring_employees
GROUP BY (title) 
ORDER BY count DESC;

SELECT * FROM retiring_employee_count
-- Retrieve the emp_no, first_name, and last_name columns from the Employees table
SELECT emp_no, first_name, last_name
INTO retirement_employees
FROM Employees
WHERE DATE_PART('year', birth_date) BETWEEN 1952 AND 1955;

-- Retrieve the title, from_date, and to_date columns from the Titles table
SELECT DISTINCT ON (t.emp_no) t.emp_no, t.title, t.from_date, t.to_date
INTO retirement_titles
FROM Titles AS t
JOIN retirement_employees AS e ON t.emp_no = e.emp_no
ORDER BY t.emp_no, t.from_date DESC;


-- Export the Retirement Titles table as retirement_titles.csv
COPY retirement_titles TO 'C:\Users\Columbia bootcamp\Pewlett-Hackard-Analysis  Module 7 Challenge\Starter_Code (22)\Starter_Code\Resources\Data\retirement_titles.csv' CSV HEADER;

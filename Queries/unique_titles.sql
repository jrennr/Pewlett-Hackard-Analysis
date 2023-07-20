-- Retrieve the employee number, first and last name, and title columns from the Retirement Titles table
SELECT DISTINCT ON (emp_no) emp_no, first_name, last_name, title
INTO unique_titles
FROM retirement_titles
WHERE to_date = '9999-01-01'
ORDER BY emp_no, to_date DESC;

-- Export the Unique Titles table as unique_titles.csv
COPY unique_titles TO 'C:\Users\Columbia bootcamp\Pewlett-Hackard-Analysis  Module 7 Challenge\Starter_Code (22)\Starter_Code\Resources\Data\unique_titles.csv' CSV HEADER;

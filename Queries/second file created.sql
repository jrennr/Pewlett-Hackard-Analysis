-- Retrieve the employee number, first and last name, and title columns from the Retirement Titles table
SELECT DISTINCT ON (emp_no) emp_no, first_name, last_name, title
INTO recent_titles
FROM retirement_titles
ORDER BY emp_no, to_date DESC;

-- Export the Recent Titles table as recent_titles.csv
COPY recent_titles TO 'C:\Users\Columbia bootcamp\Pewlett-Hackard-Analysis  Module 7 Challenge\Starter_Code (22)\Starter_Code\Resources\Data\recent_titles.csv' CSV HEADER;

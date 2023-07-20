-- Retrieve the emp_no, first_name, last_name, and birth_date columns from the Employees table
-- Retrieve the from_date and to_date columns from the Department Employee table
SELECT DISTINCT ON (e.emp_no) e.emp_no, e.first_name, e.last_name, e.birth_date, de.from_date, de.to_date
INTO mentorship_eligibility
FROM Employees AS e
JOIN dept_emp AS de ON e.emp_no = de.emp_no
JOIN Titles AS t ON e.emp_no = t.emp_no
WHERE de.to_date = '9999-01-01' AND e.birth_date BETWEEN '1965-01-01' AND '1965-12-31'
ORDER BY e.emp_no;

-- Export the Mentorship Eligibility table as mentorship_eligibility.csv
COPY mentorship_eligibility TO 'C:\Users\Columbia bootcamp\Pewlett-Hackard-Analysis  Module 7 Challenge\Starter_Code (22)\Starter_Code\Resources\Data\mentorship_eligibility.csv' CSV HEADER;

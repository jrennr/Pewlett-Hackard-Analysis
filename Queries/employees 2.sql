-- Drop the retirement_titles table if it exists
DROP TABLE IF EXISTS retirement_titles;

-- Create the retirement_titles table with first_name and last_name columns
CREATE TABLE retirement_titles (
    emp_no INT,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    title VARCHAR(50),
    from_date DATE,
    to_date DATE
);

-- Insert new data into the retirement_titles table
INSERT INTO retirement_titles (emp_no, first_name, last_name, title, from_date, to_date)
SELECT e.emp_no, e.first_name, e.last_name, t.title, t.from_date, t.to_date
FROM titles AS t
JOIN retirement_employees AS e ON t.emp_no = e.emp_no
WHERE t.to_date = '9999-01-01'
ORDER BY e.emp_no, t.from_date DESC;

-- Export the Retirement Titles table as retirement_titles.csv
COPY retirement_titles TO 'C:\Users\Columbia bootcamp\Pewlett-Hackard-Analysis  Module 7 Challenge\Starter_Code (22)\Starter_Code\Resources\Data\retirement_titles.csv' CSV HEADER;



-- Export the Retirement Titles table as titles.csv
COPY retirement_titles TO 'C:\Users\Columbia bootcamp\Pewlett-Hackard-Analysis  Module 7 Challenge\Starter_Code (22)\Starter_Code\Resources\Data\retirement_titles.csv' CSV HEADER;

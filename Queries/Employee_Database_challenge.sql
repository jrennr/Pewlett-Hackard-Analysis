CREATE TABLE new_table AS
SELECT e.emp_no, e.first_name, e.last_name, e.birth_date, t.title, t.from_date, t.to_date
FROM employees AS e
JOIN titles AS t ON e.emp_no = t.emp_no;

SELECT *
INTO retirement_titles
FROM new_table
WHERE birth_date BETWEEN '1952-01-01' AND '1955-12-31'
ORDER BY emp_no;

COPY retirement_titles TO 'C:\Users\jrgar\Pewlett-Hackard-Analysis\Data\retirement_titles.csv' CSV HEADER;

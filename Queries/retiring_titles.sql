-- Retrieve the number of titles from the Unique Titles table
SELECT title, COUNT(*) AS count
INTO retiring_titles
FROM unique_titles
GROUP BY title
ORDER BY count DESC;

-- Export the Retiring Titles table as retiring_titles.csv
COPY retiring_titles TO 'C:\Users\Columbia bootcamp\Pewlett-Hackard-Analysis  Module 7 Challenge\Starter_Code (22)\Starter_Code\Resources\Data\retiring_titles.csv' CSV HEADER;

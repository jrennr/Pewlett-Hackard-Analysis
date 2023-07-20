-- Create the titles table
CREATE TABLE titles (
    emp_no INT,
    title VARCHAR(50),
    from_date DATE,
    to_date DATE
);

-- Import data from the CSV file into the titles table
COPY titles FROM 'C:\Users\Columbia bootcamp\Pewlett-Hackard-Analysis  Module 7 Challenge\Starter_Code (22)\Starter_Code\Resources\Data\titles.csv' DELIMITER ',' CSV HEADER;

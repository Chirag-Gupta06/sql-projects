-- create database--


CREATE DATABASE sql_project_p2;



--TO CREATE TABLE AND CHECK WHETHER THE THE TABLE OF THE SAME IS EXIST OR NOT
DROP TABLE IF EXISTS retail_sales;
CREATE TABLE retail_sale (
    transaction_id INT PRIMARY KEY,
    sale_date DATE,
    sale_time TIME,
    customer_id INT NOT NULL ,
    gender VARCHAR(20),
    age INT  CHECK  (age > 0),
    category VARCHAR(40),
    quantity INT ,
    price_per_unit FLOAT,
    cogs FLOAT,
    total_sale FLOAT
);



SELECT * FROM retail_sale;

-- TELL THE TABEL HAS 2000 ROWS....
SELECT COUNT(*) 
FROM 
    retail_sale;




-- DATA CLEANING 

--show IF the quanity os null or not (used where we want to know wheter a user did not buy anything)
SELECT * FROM retail_sale 
WHERE  
    quantity IS NULL;

-- show the records whose transaction id is null..
SELECT * FROM retail_sale 
WHERE 
    transaction_id IS NULL;



SELECT * FROM retail_sale
WHERE 
    transaction_id IS NULL
    OR
    sale_date IS NULL
    OR 
    sale_time IS NULL
    OR
    gender IS NULL
    OR
    category IS NULL
    OR
    quantity IS NULL
    OR
    cogs IS NULL
    OR
    total_sale IS NULL;
    



--delete specific records 
-- Updated Complete Data Cleaning Query
DELETE FROM retail_sale
WHERE 
    transaction_id IS NULL
    OR 
    sale_date IS NULL
    OR 
    sale_time IS NULL
    OR 
    customer_id IS NULL
    OR 
    gender IS NULL
    OR 
    age IS NULL
    OR 
    category IS NULL
    OR 
    quantity IS NULL
    OR 
    price_per_unit IS NULL
    OR 
    cogs IS NULL
    OR 
    total_sale IS NULL;


-- count the records after deletion
SELECT COUNT(*) 
FROM 
    retail_sale;-- 1997


--show the records whose age is in between (20 AND 35)

SELECT * FROM retail_sale
    WHERE
    age BETWEEN 20 AND 35;

--show the total number of records of particular date

SELECT count(*) FROM retail_sale 
WHERE 
    sale_date IN ('2022-11-05','2022-10-08','2022-10-20');

--show the records of particular date
SELECT * FROM retail_sale 
WHERE 
    sale_date IN ('2022-11-05','2022-10-08','2022-10-20');

-- BASIC DATA EXPLORATION

--how many we ditinct users we have..?

SELECT COUNT(DISTINCT customer_id) as unique_customers FROM retail_sale ;--#155

--name of different categories we have..?

SELECT DISTINCT category FROM retail_sale; 

--categories use by total customers
SELECT category ,COUNT(category) AS choose_category FROM retail_sale 
group by category;



-- Data Analysis & Business Key Problems & Answers

-- My Analysis & Findings
-- Q.1 Write a SQL query to retrieve all columns for sales made on '2022-11-05
-- Q.2 Write a SQL query to retrieve all transactions where the category is 'Clothing' and the quantity sold is more than 4 in the month of Nov-2022
-- Q.3 Write a SQL query to calculate the total sales (total_sale) for each category.
-- Q.4 Write a SQL query to find the average age of customers who purchased items from the 'Beauty' category.
-- Q.5 Write a SQL query to find all transactions where the total_sale is greater than 1000.
-- Q.6 Write a SQL query to find the total number of transactions (transaction_id) made by each gender in each category.
-- Q.7 Write a SQL query to calculate the average sale for each month. Find out best selling month in each year
-- Q.8 Write a SQL query to find the top 5 customers based on the highest total sales 
-- Q.9 Write a SQL query to find the number of unique customers who purchased items from each category.
-- Q.10 Write a SQL query to create each shift and number of orders (Example Morning <=12, Afternoon Between 12 & 17, Evening >17)




-- Q.1 Write a SQL query to retrieve all columns for sales made on '2022-11-05

SELECT * FROM retail_sale WHERE sale_date='2022-11-05' ;


-- Q.2 Write a SQL query to retrieve all transactions where the category is 'Clothing' and the quantity sold is more than 4 in the month of Nov-2022.COMMENT
SELECT *FROM retail_sale 
WHERE 
    category ='Clothing' 
    AND 
    quantity >=4
    AND sale_date BETWEEN '2022-11-01' AND '2022-11-30';



-- Q.3 Write a SQL query to calculate the total sales (total_sale) for each category.


SELECT 
    category,
    SUM(total_sale) AS total ,
    COUNT(*) AS total_orders
    FROM retail_sale 
    GROUP BY 
    category;
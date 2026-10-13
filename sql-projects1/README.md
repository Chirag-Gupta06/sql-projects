# Retail Sales SQL Analysis 🛒📊

## Project Overview
This project demonstrates a complete end-to-end SQL workflow for analyzing retail sales data. It covers everything from initial database creation and robust data cleaning to exploratory data analysis (EDA) and complex business problem-solving. 

The queries showcase proficiency in basic SQL commands as well as advanced techniques like **Common Table Expressions (CTEs)**, **Window Functions**, and **Conditional Aggregations**.

## Skills & Techniques Demonstrated
*   **DDL & DML**: Creating tables and modifying records.
*   **Data Cleaning**: Identifying and removing `NULL` values to ensure data integrity.
*   **Exploratory Data Analysis (EDA)**: Understanding data distributions and unique categorical values.
*   **Advanced SQL**: Using `EXTRACT()`, `CASE` statements, Window Functions (`RANK() OVER`), and CTEs for time-series and cohort analysis.

## Project Structure

### 1. Database Setup
*   Created the `sql_project_p2` database.
*   Built the `retail_sales` table with appropriate data types and constraints (e.g., `CHECK (age > 0)`).

### 2. Data Cleaning
*   Identified records with missing data across all critical columns (transaction ID, date, customer ID, category, sales, etc.).
*   Deleted incomplete records to maintain a high-quality dataset for analysis (resulting in 1,997 clean records).

### 3. Business Data Analysis & Problem Solving
The core of the project involves answering 11 specific business questions to extract actionable insights:

1. **Daily Sales Check**: Retrieved all columns for sales made on a specific date (`2022-11-05`).
2. **Targeted Product Performance**: Filtered transactions for 'Clothing' where the quantity sold was greater than 4 in Nov 2022.
3. **Category Revenue**: Calculated the total sales and total order count for each product category.
4. **Customer Demographics**: Found the average age of customers purchasing from the 'Beauty' category.
5. **High-Value Transactions**: Identified all transactions where the total sale exceeded 1,000.
6. **High-Value Volume**: Counted the total number of transactions exceeding 1,000.
7. **Cross-Tabulation**: Calculated the total number of transactions grouped by both gender and product category.
8. **Time-Series Analysis (Best Month)**: Used Window Functions (`RANK()`) to calculate the average sale for each month and identify the best-selling month for each year.
9. **VIP Customers**: Identified the top 5 customers based on lifetime total sales.
10. **Category Reach**: Counted the number of unique customers purchasing from each category.
11. **Shift Analysis**: Used a CTE and `CASE` statement to bucket sales into specific shifts (Morning, Afternoon, Evening) and counted total orders per shift.

## Conclusion
This project provides a solid foundation for understanding customer purchasing behaviors, peak sales periods, and high-value demographic segments within a retail environment. The use of advanced SQL functions ensures that the queries are both scalable and efficient for larger datasets.
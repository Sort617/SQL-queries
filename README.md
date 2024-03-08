
# SQL Queries Overview

This document provides an overview of the SQL queries contained within this repository. The queries are designed to perform various data retrieval operations from a database that includes books, products, companies, people, toys, departments, sales, and regional sales data.

## Queries Description

1. **Top 5 Bestselling Books**
   - Retrieves the top 5 bestselling books, sorted by the number of copies sold in descending order.
   ```sql
   SELECT * FROM books ORDER BY copies_sold DESC LIMIT 5;
   ```

2. **Product Details with Company Names**
   - Fetches all product details along with the name of their corresponding company.
   ```sql
   SELECT products.*, companies.name AS company_name FROM products JOIN companies ON company_id = companies.id;
   ```

3. **People and Their Toy Counts**
   - Lists each person along with the count of toys associated with them.
   ```sql
   SELECT p.id, p.name, COUNT(t.name) as toy_count FROM people p JOIN toys t ON p.id = t.people_id GROUP BY p.id, p.name;
   ```

4. **Departments with High-value Sales**
   - Identifies departments that have made sales with prices over 98.00.
   ```sql
   SELECT ID, NAME FROM DEPARTMENTS WHERE EXISTS (SELECT PRICE FROM SALES WHERE PRICE > 98.00 AND DEPARTMENTS.ID = SALES.DEPARTMENT_ID);
   ```

5. **High-value Sales by Region**
   - Combines high-value sales (over 50) from the US and EU regions into a single result set, with the region specified for each record.
   ```sql
   SELECT 'US' as location, * FROM ussales WHERE price > 50 UNION ALL SELECT 'EU' as location, * FROM eusales WHERE price > 50;
   ```
```

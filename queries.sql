SELECT * FROM books ORDER BY copies_sold DESC LIMIT 5;

SELECT products.*, companies.name AS company_name
FROM products JOIN companies ON company_id = companies.id

SELECT 
  p.id,
  p.name,
  COUNT(t.name) as toy_count 
FROM people p JOIN toys t ON p.id = t.people_id 
group by p.id, p.name

SELECT ID, NAME
FROM DEPARTMENTS
WHERE EXISTS (SELECT PRICE FROM SALES WHERE PRICE > 98.00 AND DEPARTMENTS.ID = SALES.DEPARTMENT_ID);

SELECT 'US' as location, *
  FROM ussales
  WHERE price > 50
UNION ALL
SELECT 'EU' as location, *
  FROM eusales
  WHERE price > 50

--2
SELECT UPPER(brand) FROM products;
SELECT ROUND(price) FROM products;
SELECT NOW();
--3
CREATE VIEW expensive_summary AS 
SELECT UPPER("Name"), LOWER(Description), Price
FROM products
WHERE Price>200;
--4
SELECT * FROM expensive_summary;

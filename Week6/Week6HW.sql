CREATE DATABASE PracticeMathDB;

CREATE TABLE products(Index INT PRIMARY KEY, Name TEXT, Description TEXT, Brand TEXT, Category TEXT, Price INT, Currency VARCHAR(10), Stock INT, EAN BIGINT, Color TEXT, Size TEXT, Availability TEXT, Internal_ID INT);

SELECT SUM(price*stock) AS Inventory_Value FROM products;
SELECT category, AVG(price) AS Average_Value FROM products GROUP BY category;
SELECT name, price FROM Products WHERE price>500;
SELECT name, category FROM PRODUCTS WHERE category = 'Skincare';
SELECT name, price FROM products ORDER BY price ASC;

--The join command seems very useful that way you can still have seperate databases for information and still be able to use both.
--I wonder if there are any applications I am not thinking of for the JOIN command.

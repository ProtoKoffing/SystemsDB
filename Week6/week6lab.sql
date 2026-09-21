CREATE TABLE product(Index int PRIMARY KEY, Name text, Description text, Brand text, Category text, Price numeric, Currency text, Stock int, EAN bigint, Color text, size text, Availability text, InternalId int );
--this is where I would import the CSV file through the GUI

SELECT name, price*stock AS inventory_value 
FROM product;
--This should output the name with the inventory value as the result of price*stock

SELECT AVG(price) AS Average_Price
FROM product;
--This should average all the prices and display it as Average_Price

SELECT MIN(price) AS low_price, MAX(price) AS high_price
FROM product;
--This should show the lowest and highest price as low_price and high_price

SELECT COUNT(name) AS product_total 
FROM product;
--This should count all the rows and return the total as product_total

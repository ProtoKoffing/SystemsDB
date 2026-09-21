create table product(Index int PRIMARY KEY, Name text, Description text, Brand text, Category text, Price numeric, Currency text, Stock int, EAN bigint, Color text, size text, Availability text, InternalId int );

SELECT name, price*stock AS inventory_value
FROM product;

SELECT AVG(price) AS Average_Price
FROM product;

SELECT MIN(price) AS low_price, MAX(price) AS high_price
FROM product;

SELECT COUNT(name) AS product_total 
FROM product;

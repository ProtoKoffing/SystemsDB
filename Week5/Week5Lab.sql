CREATE DATABASE Week5;
CREATE TABLE products(Id integer GENERATED ALWAYS AS IDENTITY PRIMARY KEY, product_name varchar(100), quantity int);

INSERT INTO products (product_name, quantity)
VALUES 
('Headphones' , 2),
('Phones', 7),
('Monitor', 4),
('Keyboard', 10);

ALTER TABLE products ADD description text;
ALTER TABLE products ADD price numeric(7,2);
ALTER TABLE products ADD rating REAL;
ALTER TABLE products ADD last_updated timestamp with time zone;
ALTER TABLE products ADD in_stock boolean;

UPDATE products
SET description = 'Wireless Gaming Headphones',
    price = 79.99,
    rating = 4.2,
    last_updated = now(),
    in_stock = TRUE
WHERE product_name = 'Headphones';

UPDATE products
SET description = 'Midrange Prepaid Phone',
    price = 139.99,
    rating = 3.5,
    last_updated = now(),
    in_stock = FALSE
WHERE product_name = 'Phones';

UPDATE products
SET description = 'Curved 144hz 1080p Gaming Monitor',
    price = 279.99,
    rating = 4.9,
    last_updated = now(),
    in_stock = TRUE
WHERE product_name = 'Monitor';

UPDATE products
SET description = 'Mechanical RGB Keyboard',
    price = 79.99,
    rating = 3.9,
    last_updated = now(),
    in_stock = TRUE
WHERE product_name = 'Keyboard';

UPDATE products
SET price = 64.996
WHERE product_name = 'Headphones';
--It rounds to 25

SELECT * FROM products
SELECT product_name, price, rating FROM products
SELECT product_name, price FROM products WHERE price >26;
SELECT product_name, price FROM products WHERE in_stock = TRUE;
SELECT * FROM products ORDER BY price DESC;

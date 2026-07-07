
--LIMIT -> how many rows we want to return
--OFFSET -> how many rows we want to skip
--Formula -> (page -1)* limit = offset

SELECT name, price
FROM products
ORDER BY name ASC
LIMIT 5;

SELECT name, price
FROM products
ORDER BY price ASC
LIMIT 5;

SELECT name, price
FROM products
ORDER BY name DESC
LIMIT 5;

SELECT name, price
FROM products
ORDER BY name ASC
LIMIT 5 OFFSET 0;

SELECT name, price
FROM products
ORDER BY name ASC
LIMIT 5 OFFSET 5;

SELECT name, price
FROM products
ORDER BY name ASC
LIMIT 5 OFFSET 10;


--IN -> VALUE MUST MATCH ONE ITEM FROM THE LIST
--NOT IN -> VAKUE MUST NOT MATCH ANY ITEM FROM THE LIST
--BETWEEN -> VALUE MUST BE INSIDE A RANGE

SELECT name, category, price
FROM products
WHERE category IN ('electronics', 'furniture');

SELECT name, category
FROM products
WHERE category NOT IN ('electronics', 'furniture');

SELECT name, price
FROM products
WHERE price BETWEEN 100 AND 2000;

SELECT name, category, price, stock
FROM products
WHERE category IN ('electronics', 'stationary')
AND price BETWEEN 10 AND 1499;
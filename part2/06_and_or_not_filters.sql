

--AND -> EVERY condition must be true
--OR -> AT LEAST one condition must be true
--NOT -> reverse/exclude a condition

--products where category=electronics and price>1000

SELECT name, category, price
FROM products
WHERE category='electronics' AND price>1000;

--products where category is electronics or furniture

SELECT name, category, price
FROM products
WHERE category='electronics' OR category = 'furniture';

SELECT name, category
FROM products
WHERE NOT category = 'furniture';

SELECT name, category, price, stock
FROM products
WHERE (category='electronics' OR category='furniture')
AND stock>0;

SELECT name, price, stock, is_active
FROM products
WHERE is_active = true
AND (price<1000 OR stock>=100);
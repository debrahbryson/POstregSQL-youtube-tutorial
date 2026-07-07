
--like -> case sensitive patterns
--ilike -> case insensitive pattern match
--% -> means any no of chars

-- the % after wireless means anything can come after it
SELECT name, price
FROM products
WHERE name LIKE 'Wireless%'; 

SELECT name, category, price
FROM products
WHERE name ILIKE '%desk%';

SELECT name, category, description
FROM products
WHERE name ILIKE '%chair%' OR description ILIKE '%chair%';
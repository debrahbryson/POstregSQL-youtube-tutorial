

--SELECT * -> returns every column
--SELECT specific cols -> returns only the specified column

SELECT * FROM products;

SELECT name, category, price, stock
FROM products;

SELECT price
FROM products;

--alias -> AS -> creates alias for the output of the column name
SELECT 
    name AS product_name,
    price AS selling_price,
    stock AS available_quantity
FROM products;

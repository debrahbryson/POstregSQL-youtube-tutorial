
--returning ususally returns back the rows immediately after insert

INSERT INTO products (name, category, price, stock, sku, description)
VALUES ('webcam camera', 'electronics', 456.67, 56, 'ELEC-CAM-001', 'webcam camera description')
RETURNING id, name, category, price, stock, created_at; 

UPDATE products
SET stock = stock + 11
WHERE sku = 'ELEC-CAM-001'
RETURNING id, name, stock;

DELETE FROM products
WHERE sku = 'ELEC-CAM-001'
RETURNING id, name, sku;

SELECT name, sku
FROM  products
WHERE sku = 'ELEC-CAM-001';
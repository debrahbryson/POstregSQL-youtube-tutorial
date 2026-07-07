

INSERT INTO products (name, category, price, stock, sku, description)
VALUES 
('Laptop stand 05', 'electronics', 100, 45, 'ELEC-LAP-100', 'laptop stand 05 desc'),
('Laptop stand 06', 'electronics', 100, 45, 'ELEC-LAP-101', 'laptop stand 06 desc'),
('Laptop stand 07', 'electronics', 100, 45, 'ELEC-LAP-102', 'laptop stand 07 desc');

SELECT  name, category, price, stock, sku
FROM products
WHERE sku IN ('ELEC-LAP-100', 'ELEC-LAP-101', 'ELEC-LAP-102');


INSERT INTO products (
    name,
    category,
    price,
    stock,
    sku,
    description
)
VALUES (
    'Laptop stand',
    'Electronics',
    '5000.00',
    23,
    'ELEC-KEY-002',
    'Affordable laptop stand'
);

SELECT * FROM products WHERE sku = 'ELEC-KEY-002';






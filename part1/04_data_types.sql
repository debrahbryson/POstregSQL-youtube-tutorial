


DROP TABLE IF EXISTS basics.products_basics;

CREATE TABLE basics.products_basics(
    
    id SERIAL PRIMARY KEY,

    --VARCHAR limits no of characters
    name VARCHAR(100) NOT NULL,

    description TEXT,

    stock INTEGER DEFAULT 0,

    --BIGINT -> stores very large integer
    total_views BIGINT DEFAULT 0,

    --NUMERIC -> exact decimal values with first no as total digits and second as decimal values 
    price NUMERIC(10,2),

    is_active BOOLEAN DEFAULT true

);

--queries
INSERT INTO basics.products_basics
(name, description, stock, total_views, price, is_active)
VALUES
(
    'laptop',
    'borrowed from a friend',
    100,
    4000,
    500.99,
    true
); 

SELECT * FROM basics.products_basics;

SELECT id, name, price, is_active
FROM basics.products_basics
WHERE is_active;
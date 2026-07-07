

--tables are for storing our data
--creating tables, they live in schema

DROP TABLE IF EXISTS basics.students;

CREATE TABLE basics.students(
    --create an auto-incrementing integer
    --primary key->the column identifies each row
    
    id SERIAL PRIMARY KEY,

    --text-> string value
    --NOT NULL means it is required, postgres will reject if no value
    
    name TEXT NOT NULL,

    --UNIQUE ->no two students can have the same email

    email TEXT NOT NULL UNIQUE,

    age INTEGER CHECK(age >= 18),

    --TIMESTAMP -> stores date and time format
    --default is the current time and date, now

    created_at TIMESTAMP DEFAULT NOW()


);

--insert some data, only for teaching purpose, not done in productio
INSERT INTO basics.students(name, email, age)
VALUES 
('Okshan', 'okshan@gmail.com', 28),
('Ismail', 'ismail@gmail.com', 30),
('Denis', 'denisn@gmail.com', 50); 



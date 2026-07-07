

--schema is a folder inside the db, postgres alwasy has a default schema
--db has schema, which has tables, which has rows

--creating our own schema
--IF NOT EXISTS prevents error if th eschema already exists
CREATE SCHEMA IF NOT EXISTS basics;

CREATE EXTENSION IF NOT EXISTS pgcrypto;

--query -> optional
SELECT schema_name
FROM information_schema.schemata
ORDER BY schema_name;
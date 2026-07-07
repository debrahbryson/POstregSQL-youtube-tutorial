
CREATE EXTENSION IF NOT EXISTS pgcrypto;

DROP TABLE IF EXISTS post_tags;
DROP TABLE IF EXISTS comments;
DROP TABLE IF EXISTS posts;
DROP TABLE IF EXISTS tags;
DROP TABLE IF EXISTS users;


CREATE TABLE users(

    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),

    name TEXT NOT NULL
);

CREATE TABLE post(
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),

    user_id UUID NOT NULL REFERENCES users(id),

    title TEXT NOT NULL,

    status TEXT NOT NULL DEFAULT 'draft'
    CHECK (status IN ('draft', 'published')),

    views INTEGER NOT NULL DEFAULT 0 CHECK (views >= 0)
);

CREATE TABLE  comments (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),

    post_id UUID NOT NULL REFERENCES post(id),

    body TEXT NOT NULL
);

CREATE TABLE tags (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),

    name TEXT NOT NULL UNIQUE
);

CREATE TABLE post_tags(
    post_id UUID NOT NULL REFERENCES post(id),
    tag_id UUID NOT NULL REFERENCES tags(id),

    PRIMARY KEY (post_id, tag_id)
);


INSERT INTO users (name) VALUES
    ('Ananya'),
    ('Rahul');

INSERT INTO post(user_id, title, status, views)
SELECT id, 'PostgreSQL Explained', 'published', 100
FROM users
WHERE name = 'Ananya';

INSERT INTO post(user_id, title, status, views)
SELECT id, 'Indexes for Beginners', 'draft', 40
FROM users
WHERE name = 'Ananya';

INSERT INTO post(user_id, title, status, views)
SELECT id, 'Backend APIs with PostgreSQL', 'published', 180
FROM users
WHERE name = 'Rahul';

INSERT INTO comments (post_id, body)
SELECT id, 'Very clear explanation'
FROM post
WHERE title = 'PostgreSQL Explained';

INSERT INTO comments (post_id, body)
SELECT id, 'Please add more examples.'
FROM post
WHERE title = 'Backend APIs with PostgreSQL';

INSERT INTO tags (name) VALUES
    ('sql'),
    ('backend');

INSERT INTO post_tags (post_id, tag_id)
SELECT p.id, t.id
FROM post p, tags t
WHERE p.title = 'PostgreSQL Explained' AND  t.name = 'sql';

INSERT INTO post_tags (post_id, tag_id)
SELECT p.id, t.id
FROM post p, tags t
WHERE p.title = 'Indexes for Beginners' AND  t.name = 'sql';

INSERT INTO post_tags (post_id, tag_id)
SELECT p.id, t.id
FROM post p, tags t
WHERE p.title = 'Backend APIs Explained' AND  t.name = 'backend';

SELECT 'Part 3 reduced database reset and sampled data inserted successfully.' AS message;


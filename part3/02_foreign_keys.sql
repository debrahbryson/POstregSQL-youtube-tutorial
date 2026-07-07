
--foreign key -> a col that points to the primary key of another table

--users.id - parent key
--post.user_id - foreign key
--every post u will create that must belong to an existing user

SELECT id, name
FROM users;

SELECT id, user_id, title
FROM post;


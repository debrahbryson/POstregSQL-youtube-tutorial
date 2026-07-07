

--one parent rows can have many child rows
--one user can write many posts but one post will always belong to one user

--users -parent table
--posts -child table

SELECT 
    users.name AS author_name,
    post.title AS post_title,
    post.status
FROM users
INNER JOIN post
ON users.id = post.user_id
ORDER BY users.name, post.title;
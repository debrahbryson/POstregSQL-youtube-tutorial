

--aliases is going to make ur queries shorter and easier to read
--users.name instead u want to do u.name

SELECT 
p.title AS post_title,
p.status,
p.views,
u.name AS author_name,
c.body AS comment_body
FROM post AS p
INNER JOIN users AS u
ON p.user_id = u.id
LEFT JOIN comments AS c
ON p.id = c.post_id
ORDER BY p.views DESC; 

--left join-> keeps all rows from the left table
-- if the right table has matching data, it is included otherwise it is left null

SELECT 
post.title AS post_title,
comments.body AS comment_body
FROM post
LEFT JOIN comments
ON post.id = comments.post_id
ORDER BY post.title;
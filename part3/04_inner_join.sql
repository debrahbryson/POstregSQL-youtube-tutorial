

--inner join returns only the matching rows from both tables

SELECT 
    users. name AS author_name,
    post.title AS post_title,
    post.status,
    post.views
FROM post
INNER JOIN users
    ON post.user_id = user_id
WHERE post.status = 'published'
ORDER BY post.views DESC;

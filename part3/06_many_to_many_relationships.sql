--one post can have multiple tags
--one tag can have multiple posts

--post.id === post_tags.post_id
--tags.id === post_tags.tag_id

SELECT 
POST.title AS post_title,
tags.name AS tag_name
FROM post
INNER JOIN post_tags
ON post.id = post_tags.post_id
INNER JOIN tags
ON post_tags.tag_id = tags.id
ORDER BY post.title, tags.name;
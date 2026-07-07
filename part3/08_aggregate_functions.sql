
--calculate one result from many rows
--COUNT() -> number of rows
--SUM() -> total value
--AVG() -> average value
--MIN()-> smallest value
--MAX()-> largest value

--used in admin dashboard, reports, analytics

SELECT 
COUNT(*) AS total_posts,
COUNT(*) FILTER (WHERE status = 'published') AS published_posts,
SUM(views) AS total_views,
AVG(views) AS average_views,
MIN(views) AS lowest_views,
MAX(views) AS highest_views
FROM post;
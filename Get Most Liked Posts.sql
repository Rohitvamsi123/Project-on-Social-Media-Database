SELECT p.post_id, p.post_text, COUNT(l.like_id) AS like_count
FROM posts p
LEFT JOIN likes l ON p.post_id = l.post_id
GROUP BY p.post_id, p.post_text
ORDER BY like_count DESC;

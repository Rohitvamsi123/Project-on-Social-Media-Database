SELECT u.username, p.post_text AS latest_post, c.comment_text AS latest_comment
FROM users u
LEFT JOIN posts p ON u.user_id = p.user_id
LEFT JOIN comments c ON u.user_id = c.user_id
GROUP BY u.user_id, u.username
ORDER BY MAX(p.post_date) DESC, MAX(c.comment_date) DESC;

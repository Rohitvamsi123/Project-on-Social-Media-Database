SELECT u.username FROM users u
JOIN likes l ON u.user_id = l.user_id
WHERE l.post_id = 1;

SELECT u.user_id,
       u.name
FROM friendship AS fs
JOIN "user" AS u ON fs.user_2 = u.user_id
JOIN friendship AS fs2 ON u.user_id = fs2.user_1
WHERE fs.user_1 = 1
  AND fs.status = TRUE
GROUP BY u.user_id,
         u.name
ORDER BY u.user_id ASC;
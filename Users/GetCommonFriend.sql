SELECT u.user_id,
       u.name
FROM
  (SELECT user_2 AS friend_id1
   FROM friendship
   WHERE user_1=1
   UNION SELECT user_1
   FROM friendship
   WHERE user_2=1) AS f1
JOIN
  (SELECT user_2 AS friend_id2
   FROM friendship
   WHERE user_1=2
   UNION SELECT user_1
   FROM friendship
   WHERE user_2=2) AS f2 ON f2.friend_id2 = f1.friend_id1
JOIN "user" AS u ON u.user_id = f1.friend_id1
ORDER BY u.user_id ASC
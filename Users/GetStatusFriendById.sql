SELECT user_1,
       user_2,
       status
FROM friendship
WHERE (user_1=1
       OR user_2=1)
  OR (user_1=2
      OR user_2=2)
SELECT f.name,
       rmvp.name
FROM film AS f
JOIN rating_mvp AS rmvp ON f.rating_id = rmvp.rating_id;
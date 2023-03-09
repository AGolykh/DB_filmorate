SELECT u.name
FROM film AS f
JOIN "like" AS l ON f.film_id = l.film_id
JOIN "user" AS u ON l.user_id = u.user_id
WHERE f.film_id = 1;
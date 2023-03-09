SELECT f.name,
       Count(l.film_id)
FROM film AS f
JOIN "like" AS l ON f.film_id = l.film_id
GROUP BY f.name;
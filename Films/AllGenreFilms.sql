SELECT f.name,
       STRING_AGG(c.name, ', ') AS group_merging
FROM film_category AS fc
JOIN film AS f ON f.film_id = fc.film_id
JOIN category AS c ON fc.category_id = c.category_id
GROUP BY f.name,
         f.discription,
         f.release_date,
         f.length;
-- 17. Encuentra el título de todas las películas que son de la misma categoría que "Family".
SELECT f.title, c.name
FROM film AS f 
LEFT JOIN film_category AS fc ON f.film_id = fc.film_id 
LEFT JOIN category AS c ON fc.category_id = c.category_id
WHERE c.name = 'Family';
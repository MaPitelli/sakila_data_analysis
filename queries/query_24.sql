-- 24. Encuentra el título de las películas que son comedias y tienen una duración mayor a 180 minutos en la tabla film.
SELECT f.title, c.name, f.`length`
FROM film AS f
INNER JOIN film_category AS fc ON f.film_id = fc.film_id 
INNER JOIN category AS c ON fc.category_id = c.category_id 
WHERE c.name = 'Comedy' AND f.`length` > 180;
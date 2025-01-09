-- 4. Encuentra el título de todas las películas que tengan una duración mayor a 120 minutos.
SELECT title, `length`
FROM film
WHERE `length` > 120;

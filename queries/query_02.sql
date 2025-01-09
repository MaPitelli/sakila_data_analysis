-- 2. Muestra los nombres de todas las películas que tengan una clasificación de "PG-13".
SELECT title AS titles, rating
FROM film
WHERE rating = 'PG-13';
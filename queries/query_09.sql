-- 9. Encuentra la cantidad total de películas en cada clasificación de la tabla film y muestra la clasificación junto con el recuento.
SELECT COUNT(film_id) AS total_quantity, rating
FROM film
GROUP BY rating;

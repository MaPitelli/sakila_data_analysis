-- 12. Encuentra el promedio de duración de las películas para cada clasificación de la tabla film y muestra la clasificación junto con el promedio de duración.
SELECT round(AVG(`length`), 2) AS Average_duration, rating
FROM film
GROUP BY rating;
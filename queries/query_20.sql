-- 20. Encuentra las categorías de películas que tienen un promedio de duración superior a 120 minutos y muestra el nombre de la categoría junto con el promedio de duración.
SELECT m.name, m.duration_mean
FROM (SELECT ROUND(AVG(f.`length`), 2) AS duration_mean, c.name 
	  FROM category AS c 
	  INNER JOIN film_category AS fc ON c.category_id = fc.category_id 
	  INNER JOIN film AS f ON fc.film_id = f.film_id 
	  GROUP BY c.category_id, c.name) AS m
WHERE m.duration_mean > 120;
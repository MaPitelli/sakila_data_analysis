-- 18. Muestra el nombre y apellido de los actores que aparecen en más de 10 películas.
SELECT f.first_name, f.last_name
FROM (SELECT a.first_name, a.last_name, COUNT(fa.film_id) AS total_quantity
	  FROM actor AS a 
	  INNER JOIN film_actor AS fa ON a.actor_id = fa.actor_id
	  GROUP BY a.actor_id, a.first_name, a.last_name) AS f
WHERE f.total_quantity > 10;
-- 21. Encuentra los actores que han actuado en al menos 5 películas y muestra el nombre del actor junto con la cantidad de películas en las que han actuado.
SELECT f.first_name, f.total_quantity
FROM (SELECT a.first_name, a.last_name, COUNT(fa.film_id) AS total_quantity
	  FROM actor AS a 
	  INNER JOIN film_actor AS fa ON a.actor_id = fa.actor_id
	  GROUP BY a.actor_id, a.first_name, a.last_name) AS f
WHERE f.total_quantity >= 5
ORDER BY f.total_quantity;
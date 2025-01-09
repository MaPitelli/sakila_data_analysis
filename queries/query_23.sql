-- 23. Encuentra el nombre y apellido de los actores que no han actuado en ninguna película de la categoría "Horror". Utiliza una subconsulta para encontrar los actores que han actuado en películas de la categoría "Horror" y luego exclúyelos de la lista de actores.
SELECT ac.first_name, ac.last_name
FROM actor AS ac
WHERE actor_id NOT IN (SELECT DISTINCT a.actor_id 
					   FROM actor AS a 
					   INNER JOIN film_actor AS fa ON a.actor_id = fa.actor_id
					   INNER JOIN film_category AS fc ON fa.film_id = fc.film_id
					   INNER JOIN category AS c ON fc.category_id = c.category_id
					   WHERE c.name = 'Horror');
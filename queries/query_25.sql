-- 25. Encuentra todos los actores que han actuado juntos en al menos una película. La consulta debe mostrar el nombre y apellido de los actores y el número de películas en las que han actuado juntos.
WITH actor_pairs AS (SELECT fa1.actor_id AS actor1, fa2.actor_id AS actor2, COUNT(fa1.film_id) AS movies_together
					 FROM film_actor AS fa1
					 JOIN film_actor AS fa2 ON fa1.film_id = fa2.film_id
					 WHERE fa1.actor_id < fa2.actor_id
					 GROUP BY fa1.actor_id, fa2.actor_id
					 HAVING COUNT(fa1.film_id) > 0)
					 
SELECT a1.first_name AS A1_name, a1.last_name AS A1_surname,
       a2.first_name AS A2_name, a2.last_name AS A2_surname,
       ap.movies_together
FROM actor_pairs AS ap
JOIN actor AS a1 ON ap.actor1 = a1.actor_id
JOIN actor AS a2 ON ap.actor2 = a2.actor_id
ORDER BY ap.movies_together DESC;
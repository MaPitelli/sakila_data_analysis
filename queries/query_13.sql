-- 13. Encuentra el nombre y apellido de los actores que aparecen en la película con title "Indian Love".
SELECT a.first_name AS name, a.last_name AS surname
FROM actor AS a 
INNER JOIN film_actor AS fa USING(actor_id)
INNER JOIN film AS f USING(film_id)
WHERE f.title = "Indian Love";

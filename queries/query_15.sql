-- 15. Hay algún actor o actriz que no apareca en ninguna película en la tabla film_actor.
SELECT actor_id
FROM actor
WHERE actor_id NOT IN (SELECT DISTINCT actor_id FROM film_actor);
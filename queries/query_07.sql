-- 7. Encuentra los nombres de los actores que tengan un actor_id entre 10 y 20.
SELECT first_name AS names, actor_id
FROM actor
WHERE actor_id BETWEEN 10 AND 20; 

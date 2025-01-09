-- 6. Encuentra el nombre y apellido de los actores que tengan "Gibson" en su apellido.
SELECT first_name AS name, last_name AS surname
FROM actor
WHERE last_name LIKE '%Gibson%';
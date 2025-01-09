-- 14. Muestra el título de todas las películas que contengan la palabra "dog" o "cat" en su descripción.
SELECT title, description 
FROM film
WHERE description LIKE '%dog%' 
   OR description LIKE '%cat%';

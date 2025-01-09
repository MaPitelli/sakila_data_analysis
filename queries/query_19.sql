-- 19. Encuentra el título de todas las películas que son "R" y tienen una duración mayor a 2 horas en la tabla film.
SELECT title
FROM film 
WHERE rating = 'R' AND `length` > 120;
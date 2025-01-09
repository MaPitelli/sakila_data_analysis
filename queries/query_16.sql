-- 16. Encuentra el título de todas las películas que fueron lanzadas entre el año 2005 y 2010.
SELECT title, release_year 
FROM film AS f 
WHERE release_year BETWEEN 2005 AND 2010;
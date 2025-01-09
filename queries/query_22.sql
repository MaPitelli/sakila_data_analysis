-- 22. Encuentra el título de todas las películas que fueron alquiladas por más de 5 días. Utiliza una subconsulta para encontrar los rental_ids con una duración superior a 5 días y luego selecciona las películas correspondientes.
SELECT DISTINCT f.title
FROM film AS f 
LEFT JOIN inventory AS i ON f.film_id = i.film_id 
LEFT JOIN rental AS r ON i.inventory_id = r.inventory_id 
WHERE r.rental_id IN (SELECT rental_id 
 					  FROM rental AS r 
					  WHERE DAY(return_date) - DAY(rental_date) > 5);
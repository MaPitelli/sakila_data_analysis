-- 11. Encuentra la cantidad total de películas alquiladas por categoría y muestra el nombre de la categoría junto con el recuento de alquileres.
SELECT COUNT(r.rental_id) AS Total_FilmsRented, c.name AS CategoryName
FROM category AS c 
INNER JOIN film_category AS fc USING(category_id)
INNER JOIN inventory AS i USING(film_id)
INNER JOIN rental AS r USING(inventory_id)
GROUP BY c.name;
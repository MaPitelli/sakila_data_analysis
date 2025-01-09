-- 10. Encuentra la cantidad total de películas alquiladas por cada cliente y muestra el ID del cliente, su nombre y apellido junto con la cantidad de películas alquiladas.
SELECT c.customer_id, c.first_name AS name, c.last_name AS surname, COUNT(r.rental_id) AS Total_FilmsRented
FROM rental AS r
INNER JOIN customer AS c
ON c.customer_id = r.customer_id -- USING(customer_id)
GROUP BY c.customer_id;
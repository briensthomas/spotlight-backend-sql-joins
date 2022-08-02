-- find the film title of all inventory items that have never been rented
-- LEFT JOIN FROM inventory to film and to rental
-- use WHERE IS NULL

-- This doesn't make any sense, why are we looking for the inventory_id to be
-- null? If it hasn't been rented, it would be in the inventory, and we
-- should be looking at the rental_date to be null.

SELECT title 
FROM film
INNER JOIN inventory ON film.film_id = inventory.film_id
LEFT JOIN rental ON inventory.inventory_id = rental.inventory_id
WHERE rental.inventory_id IS NULL;
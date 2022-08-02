-- find the category name of all inventory items that have never been rented
-- Similar to exercise 9 with an additonal join

SELECT name FROM category
LEFT JOIN film_category on category.category_id = film_category.category_id
LEFT JOIN film on film_category.film_id = film.film_id
INNER JOIN inventory on film.film_id = inventory.film_id
LEFT JOIN rental on inventory.inventory_id = rental.inventory_id
WHERE rental.inventory_id IS NULL
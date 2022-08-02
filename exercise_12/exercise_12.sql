-- the top 10 cities with the most total rental payment amount
-- include the city name and sum
-- use SUM to sum up the amounts

SELECT city, sum(amount) FROM city
LEFT JOIN address on city.city_id = address.city_id
INNER JOIN customer on address.address_id = customer.address_id
INNER JOIN payment on customer.customer_id = payment.customer_id
GROUP BY city.city
ORDER BY sum DESC
LIMIT 10
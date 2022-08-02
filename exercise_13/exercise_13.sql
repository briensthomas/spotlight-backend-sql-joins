-- the average rental amount by country
-- include the country name and avg amount
-- use AVG to average the amount

SELECT country, avg(amount) FROM country
LEFT JOIN city on country.country_id = city.country_id
LEFT JOIN address on city.city_id = address.city_id
INNER JOIN customer on address.address_id = customer.address_id
INNER JOIN payment on customer.customer_id = payment.customer_id
GROUP BY country.country
ORDER BY avg DESC
LIMIT 10
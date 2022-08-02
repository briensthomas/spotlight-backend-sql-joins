-- return the title, description, release year and list of actors returned as a JSON blob
-- for the movie Airplane Sierra
    
SELECT title, description, release_year, 
json_agg(to_jsonb(actor))
as actors from film
INNER JOIN film_actor on film.film_id = film_actor.film_id
INNER JOIN actor on film_actor.actor_id = actor.actor_id
WHERE title = 'Airplane Sierra'
GROUP BY film.title, film.description, film.release_year
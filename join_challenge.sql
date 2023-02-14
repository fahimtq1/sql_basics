/* What are the emails of the customers who live in California */
SELECT customer.customer_id, customer.first_name, customer.last_name, customer.email, customer.address_id, address.district
FROM customer
INNER JOIN address
ON customer.address_id = address.address_id
WHERE address.district = 'California';

/* Get a list of all the movies "Nick Wahlberg has been in" */
SELECT actor.first_name, actor.last_name, film.title
FROM actor
INNER JOIN film_actor ON film_actor.actor_id = actor.actor_id
INNER JOIN film ON film.film_id = film_actor.film_id
WHERE actor.first_name = 'Nick' AND actor.last_name = 'Wahlberg';
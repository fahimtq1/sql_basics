/* How many payments did each staff member handle (Staff IDs 1 and 2) and who gets the bonus (according to the number of payments processed)? */
SELECT staff_id, COUNT(payment_id)
FROM payment
WHERE staff_id = 1 OR staff_id = 2
GROUP BY staff_id
ORDER BY COUNT(payment_id) DESC;

/* What is the average replacement cost per MPAA rating? */
SELECT rating, AVG(replacement_cost)
FROM film
GROUP BY rating;

/* What are the Customer IDs of the top 5 customers by total spend? */
SELECT customer_id, SUM(amount)
FROM payment
GROUP BY customer_id
ORDER BY SUM(amount) DESC
LIMIT 5;
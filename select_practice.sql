/* output table with three columns, taking data from customer table */ 
SELECT first_name, last_name, email FROM customer;   

/* output all unique ratings from film table */
SELECT DISTINCT rating FROM film;

/* What is the email of the customer Nancy Thomas? */

SELECT email
FROM customer
WHERE first_name = 'Nancy' AND last_name = 'Thomas';

/* What is the description for the movie 'Outlaw Hanky' */

SELECT description 
FROM film
WHERE title = 'Outlaw Hanky';

/* What is the phone number of the customer who lives at 259 Ipoh Drive */

SELECT phone 
FROM address
WHERE address = '259 Ipoh Drive';

/* What are the Customer IDs of the first 10 customers who created a payment? */

SELECT customer_id 
FROM payment
ORDER BY payment_date ASC
LIMIT 10;

/* What are the titles of the 5 shortest (in length of runtime) movies? */

SELECT title 
FROM film
ORDER BY (length) ASC
LIMIT 5;

/* If a customer wants to watch any movie that is 50 minutes or less in runtime, how many options do they have? */

SELECT COUNT (*)
FROM film
WHERE length <= 50;

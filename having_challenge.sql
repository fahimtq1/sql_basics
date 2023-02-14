/* What Customer IDs are eligible for platinum status, that is given to customers that have had 40 or more transaction payments? */
SELECT customer_id, COUNT(payment_id)
FROM payment
GROUP BY customer_id
HAVING COUNT(payment_id) >= 40;

/* What are the Customer IDs of customers who have spent more than $100 in payment transactions with out Staff ID member 2? */
SELECT customer_id, SUM(amount)
FROM payment 
WHERE staff_id = 2
GROUP BY customer_id
HAVING SUM(amount) > 100;
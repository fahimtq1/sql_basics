/* During which months (return the month name) did payments occur? */
SELECT DISTINCT EXTRACT(MONTH FROM payment_date) AS payment_month,
TO_CHAR(payment_date,'MONTH') AS month_name
FROM payment;

/* How many payments occurred on a Monday? */
SELECT COUNT(*)
FROM payment
WHERE EXTRACT(dow FROM payment_date)=1


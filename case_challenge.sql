SELECT 
  SUM(CASE WHEN (rating='R') THEN 1 END) AS r,
  SUM(CASE WHEN (rating='PG') THEN 1 END) AS pg,
  SUM(CASE WHEN (rating='PG-13') THEN 1 END) AS pg13
FROM film;

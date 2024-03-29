--Augment the table renting with information about customers and movies.
--Use as alias the first latter of the table name.
--Select only records about rentals since beginning of 2019.
--Calculate the number of movie rentals.
--Calculate the average rating.
--Calculate the revenue from movie rentals.
--Report these KPIs for each country.


SELECT 
	c.country,                      -- For each country report
	COUNT(*) AS number_renting,   -- The number of movie rentals
	AVG(r.rating) AS average_rating,  -- The average rating
	SUM(m.renting_price) AS revenue  -- The revenue from movie rentals
FROM renting AS r
LEFT JOIN customers AS c
ON c.customer_id = r.customer_id
LEFT JOIN movies AS m
ON m.movie_id = r.movie_id
WHERE date_renting >= '2019-01-01'
GROUP BY c.country;

-- Question 1: Last name with Walhberg
SELECT first_name,last_name
FROM actor
WHERE last_name = 'Wahlberg';
--Answer: 2

-- Question 2: payments between 3.99 and 5.99
SELECT customer_id,amount
FROM payment
WHERE amount BETWEEN 3.99 AND 5.99;
--Answer: 5607
--Question 3: most of what film
SELECT film_id, COUNT (film_id) AS Amount
FROM inventory
GROUP BY film_id
ORDER BY COUNT(film_id) DESC
LIMIT 1;
--Answer: 8
--Question 4:Customers with name William
SELECT first_name,last_name
FROM customer
WHERE last_name = 'William';
--Answer: 0
--Question 5: What employee sold the most rentals
SELECT staff_id, COUNT (staff_id) AS amount
FROM rental
GROUP BY staff_id
ORDER BY COUNT(staff_id) DESC
LIMIT 1;
--Answer: staff_id 1
--Question 6: How many different districts
SELECT district
FROM address
GROUP BY district;
-- Answer: 378
--Question 7: Film with the most actors
SELECT MAX(film_id)
FROM film_actor;
--Question 8: store_id 1 with last name -es
SELECT store_id,last_name
FROM customer
WHERE store_id = 1 AND last_name LIKE '%es';
--Answer: 13
--Question 9: 
-- SELECT COUNT(customer_id),amount
SELECT amount,customer_id
FROM payment
WHERE customer_id > 380 AND customer_id < 430;
-- FROM payment
-- WHERE amount > 250
-- HAVING COUNT(customer_id) > 380;
--Question 10:
SELECT rating, COUNT(rating) AS amount
FROM film
GROUP BY rating
ORDER BY COUNT(rating) DESC;
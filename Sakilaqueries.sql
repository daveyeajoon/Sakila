#SELECT customer.first_name, customer.last_name, customer.email, address.address, city.city
#        FROM customer, address, city
#        WHERE city.city_id = 312;

#SELECT film.title, film.description, film.release_year, film.rating, film.special_features, category.name as genre
#FROM film
#JOIN film_category ON film.film_id = film_category.film_id
#JOIN category ON film_category.category_id = category.category_id
#WHERE category.name = 'Comedy'

#SELECT actor.last_name AS LastName, film.title, film.release_year
#    FROM film, actor
#    WHERE actor.last_name = 'Lollobrigida'

#SELECT actor.first_name as FirstName, actor.last_name as LastName, film.title
#FROM actor, film
#WHERE film.title = "Bingo Talented"


#SELECT film.title, actor.first_name AS 'First Name', 
#actor.last_name AS 'Last Name'
#FROM film
#LEFT JOIN film_actor
#ON film.film_id = film_actor.film_id
#LEFT JOIN actor
#ON film_actor.actor_id = actor.actor_id
#WHERE film.title = 'Bingo Talented';


SELECT c.customer_id, p.amount
FROM customer as c
LEFT JOIN payment AS p
ON c.customer_id = p.customer_id
WHERE p.amount >
	(SELECT AVG(amount)*2
    FROM payment);


SELECT c.first_name, c.last_name, count(p.customer_id) AS 'Payments' 
FROM payment AS p
LEFT JOIN customer as c
ON p.customer_id = c.customer_id
GROUP BY p.customer_id
ORDER BY count(p.customer_id) DESC
LIMIT 5


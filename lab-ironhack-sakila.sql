USE sakila;

### Challenge ###

### Display all available tables in the Sakila database. ###

SHOW TABLES;


### Retrieve all the data from the tables actor, film and customer. ###

SELECT *
FROM sakila.actor; 

SELECT *
FROM sakila.film;

SELECT *
FROM sakila.customer;

### Retrieve the following columns from their respective tables ###

-- Titles of all films from the film table

SELECT film.title
FROM sakila.film;

SELECT language.name AS language
FROM sakila.language;

SELECT staff.first_name AS name
FROM sakila.staff;

### Retrieve unique release years. ###

SELECT DISTINCT film.release_year
FROM sakila.film;

### Counting records for database insights ###

-- Determine the number of stores that the company has.

SELECT COUNT(store.store_id) AS number_of_store
FROM sakila.store;

-- Determine the number of employees that the company has.

SELECT COUNT(staff.staff_id) AS number_of_employees
FROM sakila.staff;

-- Determine how many films are available for rent and how many have been rented.

SELECT COUNT(rental.inventory_id) AS films_available,
	   COUNT(rental.return_date) AS films_rented
FROM sakila.rental;

-- Determine the number of distinct last names of the actors in the database.

SELECT DISTINCT last_name
FROM sakila.actor;

### Retrieve the 10 longest films. ###

SELECT film.title, film.length
FROM sakila.film
ORDER BY length DESC
LIMIT 10;

### Use filtering techniques in order to ###

-- Retrieve all actors with the first name "SCARLETT"

SELECT * 
FROM sakila.actor
WHERE actor.first_name = "SCARLETT";

-- Retrieve all movies that have ARMAGEDDON in their title and have a duration longer than 100 minutes.

SELECT film.title
FROM sakila.film
WHERE film.title LIKE "%ARMAGEDDON%";

-- Determine the number of films that include Behind the Scenes content

SELECT COUNT(film.title) AS films_with_Behind_Scenes
FROM sakila.film
WHERE film.special_features LIKE "%Behind the Scenes%";
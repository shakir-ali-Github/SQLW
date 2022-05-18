-- Sakila Challenge

USE sakila;

-- Question 1: List all actors.
SELECT actor_id, first_name, last_name FROM actor;

-- Question 2: Find the surname of the actor with the forename 'John'.
SELECT first_name, last_name FROM actor WHERE first_name="John";

-- Question 3 :Find all actors with surname 'Neeson'.
SELECT first_name, last_name FROM actor WHERE last_name="Neeson";

-- Question 4: Find all actors with ID numbers divisible by 10.
SELECT first_name, last_name, actor_id FROM actor WHERE actor_id%10=0;

-- Question 5: What is the description of the movie with an ID of 100?
SELECT film_id, title, `description` FROM film WHERE film_id=100;

-- Question 6: Find every R-rated movie.
SELECT title, rating FROM film WHERE rating="R";

-- Question 7: Find every non-R-rated movie.
SELECT title, rating FROM film WHERE rating!="R";

-- Question 8: Find the ten shortest movies.
SELECT title, length FROM film ORDER BY length ASC LIMIT 10;

-- Question 9: Find the movies with the longest runtime, without using LIMIT.
SELECT title, length FROM film ORDER BY length DESC;

-- Question 10: Find all movies that have deleted scenes.
SELECT title, special_features FROM film WHERE special_features="Deleted Scenes";

-- Question 11: Using HAVING, reverse-alphabetically list the last names that are not repeated.
-- Question 12: Using HAVING, list the last names that appear more than once, from highest to lowest frequency.
-- Question 13: Which actor has appeared in the most films?
-- Question 14: When is 'Academy Dinosaur' due?
-- Question 15: What is the average runtime of all films?
-- Question 16: List the average runtime for every film category.
-- Question 17: List all movies featuring a robot.
-- Question 18: How many movies were released in 2010?
-- Question 19: Find the titles of all the horror movies.
-- Question 20: List the full name of the staff member with the ID of 2.
-- Question 21: List all the movies that Fred Costner has appeared in.
-- Question 22: How many distinct countries are there?
-- Question 23: List the name of every language in reverse-alphabetical order.
-- Question 24: List the full names of every actor whose surname ends with '-son' in alphabetical order by their forename.
-- Question 25: Which category contains the most films?
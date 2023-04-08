USE sakila; 

#1. Rank films by length (filter out the rows with nulls or zeros in length column). Select only columns title, length and rank in your output.

SELECT title, length, rating AS 'rank' FROM film
WHERE length > 0; 

#2. Rank films by length within the rating category (filter out the rows with nulls or zeros in length column). In your output, only select the columns title, length, rating and rank.

SELECT count(f.film_id) as total_films, c.category_id
FROM film as f
INNER JOIN film_category as c
ON f.film_id = c.film_id
GROUP BY category_id; 

#3. How many films are there for each of the categories in the category table? Hint: Use appropriate join between the tables "category" and "film_category".

SELECT actor_id, COUNT(*) num_of_films
FROM film_actor
GROUP BY actor_id; 

#4. Which actor has appeared in the most films? Hint: You can create a join between the tables "actor" and "film actor" and count the number of times an actor appears.

SELECT customer_id, COUNT(customer_id)
FROM rental
GROUP BY rental_id;



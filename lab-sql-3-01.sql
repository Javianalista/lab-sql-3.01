USE sakila;

-- PART 1

SELECT * FROM sakila.staff;
ALTER TABLE sakila.staff
DROP COLUMN picture;
SELECT * FROM sakila.staff;

-- PART 2

SELECT * FROM sakila.staff;
DESCRIBE sakila.staff;
SELECT * FROM sakila.customer
WHERE first_name = 'TAMMY' AND last_name = "SANDERS";
INSERT INTO sakila.staff(staff_id, first_name, last_name, address_id, email, store_id, active, username)
VALUES
(3,'Tammy','Sanders',79,'TAMMY.SANDERS@sakilacustomer.org',2,1,'Tammy');
SELECT * FROM sakila.staff;

-- PART 3

SELECT * FROM sakila.customer;
SELECT customer_id FROM sakila.customer
WHERE first_name = 'CHARLOTTE' AND last_name = "HUNTER";

SELECT * FROM sakila.film;
SELECT film_id FROM sakila.film
WHERE title = "ACADEMY DINOSAUR";

SELECT * FROM sakila.staff;
SELECT staff_id, store_id FROM sakila.staff
WHERE first_name = 'MIKE' AND last_name = 'HILLYER';

SELECT * FROM sakila.inventory;
SELECT inventory_id FROM sakila.inventory
WHERE film_id = 1 AND store_id = 1;

SELECT * FROM sakila.rental;
DESCRIBE sakila.rental;
INSERT INTO sakila.rental(inventory_id, customer_id, staff_id)
VALUES
(3,130,1);
SELECT * FROM sakila.rental
WHERE inventory_id = 3 AND customer_id =130;






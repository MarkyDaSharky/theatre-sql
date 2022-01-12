-- Creating customer
CREATE TABLE customer(
	customer_id SERIAL PRIMARY KEY,
	first_name VARCHAR(50),
	last_name VARCHAR(50),
	stubs_member BOOLEAN,
	email VARCHAR(100)
);

SELECT * FROM customer;

--CREATE table for tickets
CREATE TABLE tickets(
	ticket_id SERIAL PRIMARY KEY,
	ticket_date DATE DEFAULT CURRENT_DATE,
	ticket_price NUMERIC(4,2),
	customer_id INTEGER NOT NULL,
	FOREIGN KEY(customer_id) REFERENCES customer(customer_id)
);

SELECT * FROM tickets;

-- Create table for concessions
CREATE TABLE concessions(
	concession_id SERIAL PRIMARY KEY,
	concession_prod VARCHAR(50),
	concession_price NUMERIC(4,2),
	customer_id INTEGER NOT NULL,
	FOREIGN KEY(customer_id) REFERENCES customer(customer_id)
);

SELECT * FROM concessions;

-- Create table for movies
CREATE TABLE movies(
	movie_id SERIAL PRIMARY KEY,
	movie_name VARCHAR(100),
	movie_time VARCHAR(10),
	rating VARCHAR(10),
	movie_hall VARCHAR(10)
);

SELECT * FROM movies;

-- Adding a movie_id to the tickets table
ALTER TABLE tickets 
ADD movie_id INTEGER NOT NULL;

-- Add a foreign key to the tickets table referencing movies
ALTER TABLE tickets 
ADD FOREIGN KEY(movie_id) REFERENCES movies(movie_id);

SELECT * FROM tickets t;



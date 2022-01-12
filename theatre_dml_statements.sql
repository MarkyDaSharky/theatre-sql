-- ADDING CUSTOMER 
INSERT INTO customer(
	first_name,
	last_name,
	stubs_member,
	email
) VALUES (
	'Mark',
	'Torres',
	TRUE,
	'm1911torres@gmail.com' 
);

INSERT INTO customer(
	first_name,
	last_name,
	stubs_member,
	email
) VALUES(
	'Peter',
	'Griffin',
	FALSE,
	'pgriffin@codingtemple.com'
);

INSERT INTO movies(
	movie_name, 
	movie_time,
	rating,
	movie_hall
) 
VALUES (
	'Inception',
	1200,
	'PG-13',
	'hall-22'
),(
	'Whiplash',
	1300,
	'R',
	'hall-30'
);

SELECT * FROM movies 

SELECT * FROM tickets;

INSERT INTO tickets(
	ticket_date,
	ticket_price,
	customer_id,
	movie_id
)VALUES(
	'2022-01-12',
	10.99,
	1,
	2
)

DELETE FROM movies 
WHERE movie_id = 2

INSERT INTO concessions(
	concession_prod,
	concession_price,
	customer_id
) VALUES(
	'popcorn',
	8.99,
	1
),(
	'hot dog',
	6.99,
	1
),(
	'drink',
	4.99,
	2
);

SELECT * FROM concessions c 

CREATE TABLE customer(
	customer_id SERIAL NOT NULL,
	first_name VARCHAR(50),
	last_name VARCHAR(50)
);

CREATE TABLE ticket(
	ticket_id SERIAL NOT NULL,
	movie_title VARCHAR(50) NOT NULL,
	showtime INTEGER,
	price INTEGER NOT NULL,
	FOREIGN KEY(customer_id) REFERENCES customer(customer_id)
);

CREATE TABLE movie(
	movie_id SERIAL NOT NULL,
	title VARCHAR(50) NOT NULL,
	director VARCHAR(50) NOT NULL,
	date_released INTEGER,
	genre VARCHAR(50)
);

ALTER TABLE ticket
ADD FOREIGN KEY(movie_id) REFERENCES movie(movie_id);

CREATE TABLE theater(
	theater_id SERIAL NOT NULL,
	theater_name VARCHAR(50)
	theater_location VARCHAR(50)
);

ALTER TABLE customer
ADD FOREIGN KEY(theater_id) REFERENCES theater(theater_id);

ALTER TABLE movie
ADD FOREIGN KEY(theater_id) REFERENCES theater(theater_id);
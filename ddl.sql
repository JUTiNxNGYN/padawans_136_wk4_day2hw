CREATE TABLE customer(
    customer_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR NOT NULL,
    phone_number INTEGER,
    customer_address VARCHAR(200)
)

CREATE TABLE ticket(
    ticket_id SERIAL PRIMARY KEY,
    customer_id INTEGER NULL,
    FOREIGN KEY (customer_id) references customer(customer_id),
    movie_id INTEGER NOT NULL,
    concession_id INTEGER NOT NULL,
    -- FOREIGN KEY (movie_id) references movie(movie_id)
    -- FOREIGN KEY (concession_id) references concession(concession_id)
    showtime INTEGER NULL,
    seat_id INTEGER NOT NULL,
    title VARCHAR(200),
    price INTEGER NOT NULL
)

CREATE TABLE concession(
    concession_id SERIAL PRIMARY KEY,
    movie_id INTEGER NOT NULL,
    -- FOREIGN KEY (movie_id) references movie(movie_id)
    showtime INTEGER NULL,
    seat_id INTEGER NOT NULL
)

CREATE TABLE movie(
    movie_id SERIAL PRIMARY KEY,
    title VARCHAR(200),
    movie_description VARCHAR NOT NULL,
    movie_length INTEGER NOT NULL,
    rating VARCHAR(5),
    release_year INTEGER NOT NULL
)

ALTER TABLE ticket
ADD FOREIGN KEY (movie_id) REFERENCES movie(movie_id);

ALTER TABLE ticket
ADD FOREIGN KEY (concession_id) REFERENCES concession(concession_id);

ALTER TABLE concession
ADD FOREIGN KEY (movie_id) references movie(movie_id);


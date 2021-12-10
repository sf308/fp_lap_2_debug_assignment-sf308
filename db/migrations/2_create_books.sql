DROP TABLE IF EXISTS books;

CREATE TABLE books (
    id serial PRIMARY KEY,
    title varchar(255) NOT NULL,
    year_of_publication int,
    abstract varchar(500),
    author_id int
);
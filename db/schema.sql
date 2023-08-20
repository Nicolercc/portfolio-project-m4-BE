

DROP DATABASE IF EXISTS quotes_dev;
CREATE DATABASE quotes_dev;

\c quotes_dev;

DROP TABLE IF EXISTS categories;

CREATE TABLE categories (
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL
);

DROP TABLE IF EXISTS quotes;

CREATE TABLE quotes(
    id SERIAL PRIMARY KEY,
    quote_text TEXT NOT NULL,
    author TEXT NOT NULL,
    category TEXT NOT NULL,
    category_id INTEGER REFERENCES categories (id) ON DELETE CASCADE,
    date_added DATE DEFAULT current_date,
    rating SMALLINT DEFAULT 0 CHECK (rating >= 0 AND rating <= 5),
    is_featured BOOLEAN,
    is_favorite BOOLEAN
);
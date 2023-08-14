

DROP DATABASE IF EXISTS quotes_dev;
CREATE DATABASE quotes_dev;

\c quotes_dev;

CREATE TABLE quotes(
    id SERIAL PRIMARY KEY,
    quote_text TEXT NOT NULL,
    author TEXT NOT NULL,
    category TEXT NOT NULL,
    date_added DATE DEFAULT current_date,
    rating SMALLINT DEFAULT 0 CHECK (rating >= 0 AND rating <= 5),
    is_featured BOOLEAN,
    is_favorite BOOLEAN
);
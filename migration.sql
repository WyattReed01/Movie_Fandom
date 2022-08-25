DROP TABLE IF EXISTS movies;
DROP TABLE IF EXISTS awards;

CREATE TABLE movies (
  id serial,
  title text,
  duration integer,
  rating varchar(10),
  genre text,
  is_3d boolean NOT NULL,
  released_at timestamp with time zone,
  score numeric(3, 1)
);

CREATE TABLE awards (
  id serial,
  movies_id serial,
  kind text,
  Name text
);

ALTER TABLE awards ADD COLUMN awarded boolean NOT NULL;
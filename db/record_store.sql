DROP TABLE records;
DROP TABLE artists;

CREATE TABLE artists
(
  id SERIAL8 primary key,
  name VARCHAR(255)
);

CREATE TABLE records
(
  id SERIAL8 primary key,
  artist_id INT8 references artists(id),
  title VARCHAR(255),
  type VARCHAR(255),
  quantity INT8,
  cover_url VARCHAR(255),
  genre VARCHAR(255),
  release_year INT8
);

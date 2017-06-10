DROP TABLE inventory;
DROP TABLE artists;
DROP TABLE records;

CREATE TABLE artists
(
  id SERIAL8 primary key,
  name VARCHAR(255) not null
);

CREATE TABLE records;
(
  id SERIAL8 primary key,
  title VARCHAR(255) not null,
  quantity INT8,
  cover_url varchar(255),
  genre varchar(255),
  release_year INT8,
  
);

CREATE TABLE inventory;
(
  id SERIAL8 primary key,
  artist_id INT8 references artists(id),
  record_id INT8 references records(id)
);
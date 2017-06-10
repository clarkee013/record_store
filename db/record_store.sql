DROP TABLE inventorys;
DROP TABLE artists;
DROP TABLE records;

CREATE TABLE artists
(
  id SERIAL8 primary key,
  name VARCHAR(255)
);

CREATE TABLE records;
(
  id SERIAL8 primary key,
  artist VARCHAR(255) references artist(name),
  title VARCHAR(255),
  type VARCHAR(255),
  quantity INT8,
  cover_url VARCHAR(255),
  genre VARCHAR(255),
  release_year INT8,
  
);

CREATE TABLE inventorys;
(
  id SERIAL8 primary key,
  artist_id INT8 references artists(id),
  record_id INT8 references records(id)
);
-- Create music_albums table
create table music_albums(
  id serial not null primary key,
  archived boolean,
  publish_date date,
  on_spotify boolean
);

-- Create genres table
create table genres(
  id serial not null primary key,
  name varchar(100)
);

-- Create authors table
create table authors(
  id serial not null primary key,
  name varchar(100),
  last_name varchar(100)
);

-- create games table
create table games(
  id serial not null primary key,
  multiplayer varchar(100),
  last_played date,
  publish_date date
);

-- create books table --
create table books(
  id serial not null primary key,
  publisher varchar(100),
  publish_date date,
  archived boolean,
  cover_state varchar(100)
);

-- Create labels table --
create table labels(
  id serial not null primary key,
  title varchar(100),
  color varchar(100)
);

--- Create labels_books join table ---
create table labels_book(
  id serial not null,
  book_id int not null,
  label_id int not null,
  CONSTRAINT fk_books FOREIGN KEY(book_id) REFERENCES books(id) ON UPDATE CASCADE ON DELETE CASCADE,
  CONSTRAINT fk_labels FOREIGN KEY(label_id) REFERENCES labels(id) ON UPDATE CASCADE ON DELETE CASCADE
);

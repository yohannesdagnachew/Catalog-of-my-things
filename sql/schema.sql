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
  name varchar(100)
  last_name varchar(100)
);

-- create games table
create table games(
  id serial not null primary key,
  multiplayer varchar(100)
  last_played date
  publish_date date
);

-- Create tables for raw data to be loaded into
CREATE TABLE artist (
id INT PRIMARY KEY,
Artist Varchar(30) Not null,
Followers Bigint,
Genres TEXT,
NumAlbums Int,
Gender Varchar(5)
);

CREATE TABLE billboard (
id INT PRIMARY KEY,
Artist Varchar(30) Not null,
Name Varchar(50) Not null,
Weekly_rank Int,
Peak_position Int,
NumAlbums Int,
Date date,
Genres TEXT
);

CREATE TABLE artist (
id INT PRIMARY KEY,
GrammyAward Varchar(255) not null,
GrammyYear int,
Genres TEXT,
Name Varchar(50) Not null,
Artist Varchar(30),
);

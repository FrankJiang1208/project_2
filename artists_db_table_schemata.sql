-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "artist" (
    "artist" varchar(255)   NOT NULL,
    "genre" varchar(255)   NOT NULL,
    "num_albums" varchar(255)   NOT NULL,
    "gender" varchar(255)   NOT NULL,
    "group_solo" varchar(255)   NOT NULL,
    CONSTRAINT "pk_artist" PRIMARY KEY (
        "artist"
     )
);

CREATE TABLE "billboard" (
    "artist" varchar(255)   NOT NULL,
    "name_of_song" varchar(255)   NOT NULL,
    "peak_position" numeric   NOT NULL,
    "weeks_on_chart" numeric   NOT NULL,
    "year" int   NOT NULL,
    "genre" varchar(255)   NOT NULL
);

CREATE TABLE "grammy_song" (
    "artist" varchar(255)   NOT NULL,
    "grammy_award" varchar(255)   NOT NULL,
    "grammy_year" int   NOT NULL,
    "name_of_song" varchar(255)   NOT NULL,
    "genre" varchar(255)   NOT NULL
);

ALTER TABLE "billboard" ADD CONSTRAINT "fk_billboard_artist" FOREIGN KEY("artist")
REFERENCES "artist" ("artist");

ALTER TABLE "grammy_song" ADD CONSTRAINT "fk_grammy_song_artist" FOREIGN KEY("artist")
REFERENCES "artist" ("artist");


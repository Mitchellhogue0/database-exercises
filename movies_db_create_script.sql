CREATE DATABASE IF NOT EXISTS movie_db;

USE movie_db;

DROP TABLE IF EXISTS movies;

CREATE TABLE movies
(
    id     INT UNSIGNED NOT NULL AUTO_INCREMENT,
    title  VARCHAR(100),
    year   INT          NOT NULL,
    rating INT,
    plot   TEXT,
    PRIMARY KEY (id)
);

INSERT INTO movies (id, title, year, rating, plot)
VALUES ('Tenet', '2021', '4',
        'Armed with only one word, Tenet, and fighting for the survival of the entire world, a Protagonist journeys
through a twilight world of international espionage on a mission that will unfold in something beyond real time.'),
       ('Resident Evil', '2002', '10', 'A special military unit fights a powerful, out-of-control supercomputer and
hundreds of scientists who have mutated into flesh-eating creatures after a laboratory accident.'),
       ('Shrek 2', '2004', '10', null);

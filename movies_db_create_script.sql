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

INSERT INTO movies (title, year, rating, plot)
VALUES ('Tenet', '2021', '4',
        'Armed with only one word, Tenet, and fighting for the survival of the entire world, a Protagonist journeys
through a twilight world of international espionage on a mission that will unfold in something beyond real time.'),
       ('Resident Evil', '2002', '10', 'A special military unit fights a powerful, out-of-control supercomputer and
hundreds of scientists who have mutated into flesh-eating creatures after a laboratory accident.'),
       ('Shrek 2', '2004', '10', null),
       ('Troy', '2004', '7', 'Based on Homer''s \"Iliad,\" this epic portrays the battle between the ancient kingdoms
of Troy and Sparta. While visiting Spartan King Menelaus (Brendan Gleeson), Trojan prince Paris (Orlando Bloom) falls
for Menelaus'' wife, Helen (Diane Kruger), and takes her back to Troy. Menelaus'' brother, King Agamemnon (Brian Cox),
having already defeated every army in Greece, uses his brother''s fury as a pretext to declare war against Troy, the
last kingdom preventing his control over the Aegean Sea.');

SELECT * FROM movies;
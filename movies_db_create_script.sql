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
last kingdom preventing his control over the Aegean Sea.'),
       ('Inception', '2010', '9', 'Dom Cobb (Leonardo DiCaprio) is a thief with the rare ability to enter people''s
dreams and steal their secrets from their subconscious. His skill has made him a hot commodity in the world of corporate
espionage but has also cost him everything he loves. Cobb gets a chance at redemption when he is offered a seemingly
impossible task: Plant an idea in someone''s mind. If he succeeds, it will be the perfect crime, but a dangerous enemy
anticipates Cobb''s every move.'),
       ('Pulp Fiction', '1994', '8', 'Vincent Vega (John Travolta) and Jules Winnfield (Samuel L. Jackson) are hitmen
with a penchant for philosophical discussions. In this ultra-hip, multi-strand crime movie, their storyline is
interwoven with those of their boss, gangster Marsellus Wallace (Ving Rhames) ; his actress wife, Mia (Uma Thurman) ;
struggling boxer Butch Coolidge (Bruce Willis) ; master fixer Winston Wolfe (Harvey Keitel) and a nervous pair of armed
robbers, "Pumpkin" (Tim Roth) and "Honey Bunny" (Amanda Plummer).
'),
       ('The Notebook', '2004', '10', 'In 1940s South Carolina, mill worker Noah Calhoun (Ryan Gosling) and rich girl
Allie (Rachel McAdams) are desperately in love. But her parents don''t approve. When Noah goes off to serve in World War
II, it seems to mark the end of their love affair. In the interim, Allie becomes involved with another man (James
Marsden). But when Noah returns to their small town years later, on the cusp of Allie''s marriage, it soon becomes clear
that their romance is anything but over.');

SELECT *
FROM movies;
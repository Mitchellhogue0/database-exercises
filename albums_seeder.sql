USE codeup_test_db;

INSERT INTO albums
(artist, name, release_date, sales, genre)
VALUES ('Meatloaf', 'Bat Out of Hell', '1977', '21.7', 'Hard rock, glam rock, progressive rock'),
       ('Pink Floyd', 'Dark Side of the Moon', '1973', '24.4', 'Progressive rock'),
       ('Whitney Houston', 'The Bodyguard', '1992', '32.4', 'R&B, soul, pop, soundtrack'),
       ('Eagles', 'Their Greatest Hits', '1976', '41.2', 'Country rock, soft rock, folk rock'),
       ('Bee Gees', 'Saturday Night Fever', '1977', '21.6', 'Disco'),
       ('Fleetwood Mac','Rumours', '1977', '27.9', 'Soft rock'),
       ('Shania Twain', 'Come on over', '1998', '36.6', 'Country, pop'),
       ('Various artists', 'Grease: The Original Soundtrack from the Motion Picture', '1978', '14.4',' Rock and roll'),
       ('Led Zeppelin', 'Led Zeppelin IV', '1971', '29', 'Hard rock, heavy metal, folk rock'),
       ('Michael Jackson', 'Bad', '1987', '19.7', 'Pop, rhythm and blues, funk and rock'),
       ('Alanis Morissette',' Jagged Little Pill', '1995', '24.3', 'Alternative Rock'),
       ('Michael Jackson', 'Dangerous', '1991', '17.0', 'New jack swing, R&B and pop'),
       ('Celine Dion', 'Falling into You', '1996', '21.1', 'Pop, Soft Rock'),
       ('Metallica', 'Metallica', '1991', '25.2', 'Heavy Metal'),
       ('The Beatles', '1', '2000', '23.5', 'Rock'),
       ('The Beatles', 'Abbey Road', '1969', '14.4', 'Rock'),
       ('ABBA', 'Gold: Greatest Hits', '1992', '23.0', 'Pop, Disco'),
       ('Bruce Springsteen', 'Born in the U.S.A.', '1984', '19.6', 'Heartland rock'),
       ('Pink Floyd', 'The Wall', '1979', '18.7', 'Progressive rock'),
       ('James Horner', 'Titanic: Music from the Motion Picture', '1997', '18.1', 'Film score'),
       ('Dire Straits', 'Brothers in Arms', '1985', '17.7',	'Roots rock, blues rock, soft rock'),
       ('Santana', 'Supernatural', '1999', '20.5', 'Latin rock'),
       ('Guns N\' Roses', 'Appetite for Destruction', '1987', '21.9', 'Hard rock'),
       ('Elton John', 'Goodbye Yellow Brick Road', '1973', '8.5', 'rock, pop rock, glam rock');


SELECT * FROM albums;
USE codeup_test_db;

# 10x sales
SELECT * FROM albums;
UPDATE albums
SET sales = sales*10;

# Anything earlier than 1980 is now 1800
UPDATE albums
SET release_date = '1800'
WHERE release_date < '1980';
SELECT * FROM albums;

# Michael Jackson to Peter Jackson
UPDATE albums
SET artist = 'Peter Jackson'
WHERE artist = 'Michael Jackson';
SELECT * FROM albums;
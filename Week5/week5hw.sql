create database week5;

create table games(
	genre varchar(25),
	playtime int,
	rating float,
	release_date date
);

insert into games(genre, playtime, rating, release_date)
values('horror', 5, 5.7, '2026-09-20'),
('action', 22, 8.6, '2002-07-25'),
('story', 65, 3.2, '1988-12-04'),
('pvp', 1000, 9.8, '2025-03-24'),
('coop', 87, 4.3, '2013-05-10');

ALTER TABLE games
ADD COLUMN game_name CHAR(30),
ADD COLUMN price NUMERIC,
ADD COLUMN multiplayer BOOLEAN,
ADD COLUMN last_updated TIMESTAMP;

UPDATE games
SET game_name = 'Nightmare'
WHERE genre = 'horror';
UPDATE games
SET game_name = 'Battle Zone',
    price = 59.99
WHERE genre = 'pvp';
UPDATE games
SET game_name = 'Adventure Quest',
    multiplayer = TRUE
WHERE genre = 'coop';

ALTER TABLE games
RENAME COLUMN playtime TO platime_hr;

SELECT * FROM GAMES
WHERE rating > 5;

SELECT game_name, rating FROM games

SELECT game_name, genre, rating FROM games
WHERE rating <6;

SELECT game_name, rating FROM games
ORDER BY rating ASC;

SELECT game_name, rating FROM games
WHERE rating > 6.2


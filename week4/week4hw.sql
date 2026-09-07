--1.
create database week3_homework
--3.
create table books (author varchar(50), title varchar(50), genre varchar(50), rating int, release_year int);
--4.
insert into books(author, title, genre, rating, release_year)
VALUES ('tbagwell', 'awakenonline', 'scifi', 4, 2022),
('jkrowling', 'harrypotter', 'fantasy', 2, 1997),
('jadebateman', 'mybook', 'cool', 5, 2026),
('tahmidwav', 'titanlabs', 'fantasy', 4, 2024),
('jordanmel', 'spiritofwest', 'childfantasy', 3, 2023 );
--5.
SELECT * FROM books;

SELECT author, title FROM books;

SELECT DISTINCT rating FROM books;

SELECT rating, author, title FROM books
WHERE rating > 3;

SELECT genre, rating, title FROM books
WHERE genre = 'scifi';

SELECT genre, rating, title FROM books
ORDER BY rating desc;
--6.
SELECT genre, rating, title FROM books
WHERE rating > 3
ORDER BY rating desc;
--7.
SELECT genre, rating, title FROM books
WHERE rating < 3 OR rating <4
ORDER BY rating desc;
-- I learnt more about misc data types like booleans
-- I wonder if there is any other datatypes that they didnt cover, and if so how may.

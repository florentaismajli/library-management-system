--ushtrimi 1
SELECT *
FROM books;

--ushtrimi 2 
SELECT title, author, price
FROM books;

--ushtrimi 3
SELECT *
FROM books
WHERE price > 15;

--ushtrimi 4
SELECT *
FROM books
WHERE publication_year > 2020;

--ushtrimi 5
SELECT *
FROM books
WHERE stock > 5;

--ushtrimi 6
SELECT *
FROM books
WHERE genre = 'Fantazi'
   OR genre = 'Fantasy';
   
   --ushtrimi 7
   SELECT *
FROM books
WHERE price BETWEEN 10 AND 30;


--ushtrimi 8

SELECT *
FROM books
WHERE title LIKE 'T%';

--ushtrimi 9
SELECT *
FROM books
WHERE language != 'English';

--ushtrimi 10
SELECT *
FROM books
WHERE publication_year > 2015
  AND price < 20;
  
  --ushtirmi 11
  SELECT DISTINCT genre
FROM books;

--ushtrimi 12
SELECT DISTINCT language
FROM books;

--ushtrim 13
SELECT *
FROM books
ORDER BY price DESC;

--ushtrimi 14
SELECT *
FROM books
WHERE rating IS NOT NULL
ORDER BY rating DESC
LIMIT 5;

--ushtrimi 15
SELECT *
FROM books
WHERE rating IS NULL;

--ushtrimi 16
SELECT *
FROM books
WHERE rating IS NOT NULL
  AND stock > 0;
  
  --ushtrimi 17
  SELECT *
FROM books
WHERE genre != 'Horror';

--ushtrimi 18
SELECT
    title AS "Titulli i Librit",
    author AS "Autori"
FROM books;

--ushtrimi 19
SELECT COUNT(*) AS total_books
FROM books;

--ushtrimi 20
SELECT AVG(price) AS average_price
FROM books;

--ushtrimi 21
SELECT
    MAX(price) AS highest_price,
    MIN(price) AS lowest_price
FROM books;


--ushtrimi 22
SELECT SUM(stock) AS total_stock
FROM books;

--ushtrimi 23
SELECT
    genre,
    COUNT(*) AS number_of_books
FROM books
GROUP BY genre;

--ushtrimi 24
SELECT
    genre,
    AVG(price) AS average_price
FROM books
GROUP BY genre;

--ushtrimi 25
SELECT
    genre,
    AVG(price) AS average_price
FROM books
GROUP BY genre
ORDER BY average_price DESC;

--ushtrimi 26
SELECT *
FROM books
WHERE id = 2;
UPDATE books
SET price = 13.50
WHERE id = 2;

--ushtrimi 27
SELECT *
FROM books
WHERE id = 3;

UPDATE books
SET stock = stock + 5
WHERE id = 3;

--ushtrimi 28
SELECT *
FROM books
WHERE genre = 'Poezi';

UPDATE books
SET price = price * 0.90
WHERE genre = 'Poezi';

--ushtrimi 29
SELECT *
FROM books
WHERE id = 12
  AND rating IS NULL;

UPDATE books
SET rating = 4.3
WHERE id = 12;

--ushtrimi 30
SELECT *
FROM books
WHERE id = 22;

DELETE FROM books
WHERE id = 22;


--ushtrimi 31
SELECT *
FROM books
WHERE publication_year < 1990
  AND stock = 0;
  
  DELETE FROM books
WHERE publication_year < 1990
  AND stock = 0;
  
  
  --ushtrimi 32
  SELECT
    title,
    author,
    genre,
    publication_year,
    price,
    stock,
    rating
FROM books
WHERE stock >= 1
  AND rating >= 4.0
  AND publication_year >= 2015
  AND genre != 'Horror'
  AND price <= 30
ORDER BY rating DESC
LIMIT 5;

--ushtrimi me bonuse 
SELECT
    title,
    author,
    price
FROM books
WHERE price > (
    SELECT AVG(price)
    FROM books
);



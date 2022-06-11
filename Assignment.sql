Exercise 1:

SELECT title FROM movies;

SELECT director FROM movies;

SELECT title, director FROM movies;

SELECT title, year FROM movies;

SELECT * FROM movies;


Exercise 2:

SELECT * FROM movies WHERE id = 6;

SELECT * FROM movies WHERE year BETWEEN 2000 AND 2010;

SELECT * FROM movies WHERE year NOT BETWEEN 2000 AND 2010;

SELECT * FROM movies WHERE id <= 5;


Exercise 3:

SELECT * FROM movies WHERE title LIKE "%Toy Story%";

SELECT * FROM movies WHERE director = "John Lasseter";

SELECT * FROM movies WHERE director != "John Lasseter";

SELECT * FROM movies WHERE title LIKE "WALL-_";


Exercise 4: 

SELECT DISTINCT director FROM movies ORDER BY director ASC;

SELECT * FROM movies ORDER BY year DESC LIMIT 4;

SELECT * FROM movies ORDER BY title ASC LIMIT 5;

SELECT * FROM movies ORDER BY title ASC LIMIT 5 OFFSET 5;


Exercise 5:

SELECT city, population FROM north_american_cities WHERE country = "Canada";

SELECT city FROM north_american_cities
WHERE country = "United States"
ORDER BY latitude desc;

SELECT city, longitude FROM north_american_cities
WHERE longitude < -87.629798
ORDER BY longitude ASC;

SELECT * FROM north_american_cities
WHERE country = "Mexico"
ORDER BY population DESC 
LIMIT 2;

SELECT * FROM north_american_cities
WHERE country = "United States"
ORDER BY population DESC 
LIMIT 2 OFFSET 2;


Exercise 6:

SELECT title, domestic_sales, international_sales
FROM movies
INNER JOIN boxoffice
    ON movies.id = boxoffice.movie_id;


SELECT title, domestic_sales, international_sales
FROM movies
INNER JOIN boxoffice
    ON movies.id = boxoffice.movie_id
WHERE international_sales > domestic_sales;


SELECT title, rating
FROM movies
INNER JOIN boxoffice
    ON movies.id = boxoffice.movie_id
ORDER BY rating DESC;


Exercise 7:

SELECT DISTINCT building FROM employees;

SELECT * FROM buildings;

SELECT DISTINCT building_name, role 
FROM buildings 
  LEFT JOIN employees
    ON building_name = building;


Exercise 8:

SELECT * FROM employees WHERE building is NULL;

SELECT DISTINCT building_name
FROM buildings 
  LEFT JOIN employees
    ON building_name = building
WHERE role IS NULL;


Exercise 9:

SELECT title, (domestic_sales + international_sales) / 1000000 AS gross_sales_millions
FROM movies
  JOIN boxoffice
    ON movies.id = boxoffice.movie_id;

SELECT title, (rating * 10) AS Percent
FROM movies
    JOIN boxoffice
        ON movies.id = boxoffice.movie_id;

SELECT title, year
FROM movies
WHERE year % 2 = 0;


Exercise 10:

SELECT MAX(years_employed) as Max_years_employed
FROM employees;

SELECT DISTINCT role, AVG(years_employed) AS Average_years_employed
FROM employees
GROUP BY role;

SELECT building, SUM(years_employed) as Total_years_employed
FROM employees
GROUP BY building;


Exercise 11:

SELECT role, COUNT(*) as Number_of_Artists
FROM employees
WHERE role = "Artist";

SELECT role, COUNT(*)
FROM employees
GROUP BY role;

SELECT role, SUM(years_employed) AS Total_number_of_years_employed
FROM employees
WHERE role = "Engineer";


Exercise 12:

SELECT director, COUNT(*) AS Number_of_movies_directed 
FROM movies
GROUP BY director;

SELECT director, SUM(domestic_sales + international_sales) as Cumulative_sales_from_all_movies
FROM movies
    INNER JOIN boxoffice
        ON movies.id = boxoffice.movie_id
GROUP BY director;


Exercise 13:

INSERT INTO movies VALUES (4, "Toy Story 4", "Murali", 2022, 102);

INSERT INTO boxoffice VALUES (4, 8.7, 340000000, 270000000);


Exercise 14:

UPDATE movies
SET director = "John Lasseter"
WHERE title = "A Bug's Life";

UPDATE movies
SET year = 1999
WHERE id = 3;

UPDATE movies
SET title = "Toy Story 3", director = "Lee Unkrich"
WHERE id = 11;


Exercise 15:

DELETE FROM movies
WHERE year < 2005;

DELETE FROM movies
WHERE director = "Andrew Stanton";


Exercise 16:

CREATE TABLE database (
    Name TEXT,
    Version FLOAT,
    Download_count INTEGER
);


Exercise 17:

ALTER TABLE movies
ADD Aspect_ratio FLOAT;

ALTER TABLE movies
ADD Language TEXT
    DEFAULT "English";


Exercise 18:

DROP TABLE movies;

DROP TABLE IF EXISTS boxoffice;








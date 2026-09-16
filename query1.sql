SELECT  title, release_date
from movies WHERE EXTRACT(year FROM release_date) = 2020;

SELECT first_name 
FROM actors 
WHERE lower(first_name) LIKE lower('%s');

SELECT title, rating, release_date FROM movies
WHERE rating BETWEEN 4 AND 8 
AND EXTRACT(year FROM release_date) BETWEEN 2004 AND 2010
ORDER BY rating ASC; 
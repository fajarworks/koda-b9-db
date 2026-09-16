SELECT title, release_date, concat(first_name, ' ', last_name) AS "director", name as "genre"
FROM movies m
JOIN directors d ON m.director_id = d.id
JOIN genres g ON m.genre_id = g.id
LIMIT 50;

SELECT * FROM movies_actors;

SELECT  concat(first_name, ' ', last_name) AS "actors",m.title, ma.role 
FROM  movies_actors ma
JOIN movies m ON ma.movie_id = m.id
JOIN actors a ON ma.actor_id = a.id;
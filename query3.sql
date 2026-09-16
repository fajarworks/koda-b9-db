SELECT concat(directors.first_name, ' ',directors.last_name) as directors, COUNT(movies.genre_id) as "total genre"
FROM movies
JOIN directors ON movies.director_id = directors.id 
JOIN genres ON movies.genre_id = genres.id
GROUP BY concat(directors.first_name, ' ',directors.last_name), directors.id;

SELECT concat(actors.first_name, ' ', actors.last_name) as actors, COUNT(movies_actors.role) AS total_role
FROM movies_actors
JOIN actors on movies_actors.actor_id = actors.id
JOIN movies on movies_actors.movie_id = movies.id
GROUP BY  actors.id
HAVING COUNT(actors.id) > 5;

SELECT concat(directors.first_name, ' ', directors.last_name) as directors, COUNT(directors.id) as "total movies"
FROM movies
JOIN directors ON movies.director_id = directors.id
GROUP BY concat(directors.first_name, ' ', directors.last_name)
ORDER BY "total movies" DESC
LIMIT 1;

SELECT EXTRACT(year FROM release_date) as year, COUNT(EXTRACT(year FROM release_date)) as busiest_year
FROM movies
GROUP BY EXTRACT(year FROM release_date)
ORDER BY busiest_year DESC
LIMIT 1;


SELECT movies.title, string_agg(actors.first_name || ' ' || actors.last_name, ', ') as actors
FROM movies_actors
JOIN movies ON movies_actors.movie_id = movies.id
JOIN actors ON movies_actors.actor_id = actors.id
GROUP BY movies.title;

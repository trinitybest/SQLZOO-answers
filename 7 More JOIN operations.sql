--URL: http://sqlzoo.net/wiki/More_JOIN_operations
--1
SELECT id, title
 FROM movie
 WHERE yr=1962
 
--2
SELECT yr 
FROM movie 
WHERE title = 'Citizen Kane'

--3
SELECT id, title, yr
FROM movie
WHERE title LIKE '%Star Trek%';

--4
SELECT title 
FROM movie
WHERE id in (11768, 11955, 21191)

--5
SELECT id
FROM actor
WHERE name='Glenn Close';

--6
SELECT id 
FROM movie
WHERE title='Casablanca';

--7
SELECT name
FROM actor JOIN casting ON (id=actorid)
WHERE movieid = 11768
ORDER BY ord

--8
SELECT name
FROM movie, actor, casting
WHERE movie.title = 'Alien'
AND movie.id = movieid
AND actor.id = actorid

--9
SELECT title
FROM movie, actor, casting
WHERE name='Harrison Ford'
AND movie.id = movieid
AND actor.id = actorid

--10
SELECT title
FROM movie, actor, casting
WHERE name='Harrison Ford'
AND movie.id = movieid
AND actor.id = actorid
AND ord!=1

--11
SELECT title, name
FROM movie, actor, casting
WHERE yr=1962
AND movie.id = movieid
AND actor.id = actorid
AND ord=1

--12
SELECT yr,COUNT(title) FROM
  movie JOIN casting ON movie.id=movieid
         JOIN actor   ON actorid=actor.id
WHERE name='John Travolta'
GROUP BY yr
HAVING COUNT(title)=(SELECT MAX(c) FROM
(SELECT yr,COUNT(title) AS c FROM
   movie JOIN casting ON movie.id=movieid
         JOIN actor   ON actorid=actor.id
 WHERE name='John Travolta'
 GROUP BY yr) AS t
)

--13
SELECT title, name 
FROM movie JOIN casting ON movie.id=movieid
JOIN actor ON actorid=actor.id
WHERE movieid IN (
  SELECT movieid 
  FROM movie, actor, casting
  WHERE name='Julie Andrews'
  AND movie.id=movieid
  AND actor.id=actorid)
AND ord=1

--14
SELECT DISTINCT name
FROM movie, casting, actor
WHERE movie.id=movieid
AND actor.id=actorid
AND name IN ( SELECT name FROM
 (
 SELECT name, COUNT(movieid)
 FROM movie, casting, actor
 WHERE movie.id=movieid
 AND actor.id=actorid
 AND ord=1
 GROUP BY name
 HAVING COUNT(movieid)>=30
 ) as t
 )
 
--15
SELECT title, COUNT(name)
FROM movie, actor, casting
WHERE movie.id=movieid
AND actor.id=actorid
AND yr = 1978
GROUP BY title
ORDER BY 2 DESC

--16
SELECT DISTINCT name 
FROM actor, casting
WHERE actor.id = actorid
AND movieid IN (
 SELECT movieid 
 FROM casting, actor
 WHERE actor.id = actorid
 AND name='Art Garfunkel'
)
AND name!='Art Garfunkel'
















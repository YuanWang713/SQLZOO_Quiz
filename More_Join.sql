4
SELECT title FROM movie WHERE id IN (11768,11955,21191)
7
SELECT name FROM actor JOIN casting ON actor.id = casting.actorid 
WHERE movieid = 11768
8
SELECT name FROM actor JOIN casting ON actor.id = casting.actorid 
WHERE movieid IN (SELECT id FROM movie WHERE title = 'Alien')
9
SELECT title FROM movie WHERE id IN 
(SELECT movieid FROM actor JOIN casting ON id = actorid 
	WHERE name = 'HarrisON Ford')
10
SELECT title FROM movie WHERE id IN 
(SELECT movieid FROM actor JOIN casting ON id = actorid 
	WHERE name = 'HarrisON Ford' and ord != 1)
11
SELECT title, name FROM movie JOIN casting ON id = movieid 
JOIN actor ON casting.actorid = actor.id 
WHERE yr = 1962 and ord = 1
12
SELECT yr,COUNT(title) FROM
  movie JOIN casting ON movie.id=movieid
         JOIN actor   ON actorid=actor.id
WHERE name='John Travolta'
GROUP BY yr
HAVING COUNT(title)>2
13
SELECT title, name FROM movie JOIN casting ON id = movieid 
JOIN actor ON casting.actorid = actor.id 
WHERE movieid IN (SELECT movieid FROM casting
WHERE actorid IN (SELECT id FROM actor
  WHERE name='Julie Andrews')) and ord = 1
14
SELECT name FROM actor WHERE id IN 
(SELECT actorid FROM casting WHERE ord = 1 
	GROUP BY actorid having count(ord) >= 30)
15
SELECT title,count(actorid) as num FROM casting JOIN movie ON movieid = id 
WHERE yr = 1978 GROUP BY title ORDER BY num DESC 
16
SELECT distinct name FROM actor JOIN casting ON actorid = id WHERE movieid IN 
(SELECT movieid FROM casting WHERE actorid IN 
	(SELECT id FROM actor WHERE name = 'Art Garfunkel')) 
and name != 'Art Garfunkel'
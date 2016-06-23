--URL: http://sqlzoo.net/wiki/SELECT_from_Nobel_Tutorial
--1
SELECT yr, subject, winner
  FROM nobel
 WHERE yr = 1950
 
 --2
 SELECT winner
  FROM nobel
 WHERE yr = 1962
   AND subject = 'Literature'
   
--3
SELECT yr, subject
FROM nobel
WHERE winner='Albert Einstein'

--4
SELECT winner
FROM nobel
WHERE subject = 'Peace'
AND yr>=2000

--5
SELECT yr, subject, winner
FROM nobel
WHERE subject='Literature'
AND (yr BETWEEN 1980 AND 1989);

--6
SELECT * FROM nobel
 WHERE winner IN ('Theodore Roosevelt',
'Woodrow Wilson',
'Jimmy Carter');

--7
SELECT winner
FROM nobel
WHERE winner LIKE 'John%'

--8
SELECT yr, subject, winner
FROM nobel
WHERE (subject='Physics' AND yr=1980) 
OR (subject='Chemistry' AND yr=1984);

--9
SELECT yr, subject, winner
FROM nobel
WHERE yr = 1980
AND subject NOT IN ('Chemistry', 'Medicine')

--10
SELECT yr, subject, winner
FROM nobel
WHERE subject='Medicine'
AND yr<1910
UNION
SELECT yr, subject, winner
FROM nobel
WHERE subject='Literature'
AND yr>=2004

--11
SELECT yr, subject, winner
FROM nobel
WHERE winner like '%Gr%nberg%'

--12
SELECT yr, subject, winner
FROM nobel
WHERE winner = 'EUGENE O\'NEILL'

--13
SELECT winner, yr, subject
FROM nobel
WHERE winner like '%Sir%'
ORDER BY yr DESC, winner


--14
SELECT winner, subject
  FROM nobel
 WHERE yr=1984
 ORDER BY subject IN ('Physics','Chemistry'), subject,winner


















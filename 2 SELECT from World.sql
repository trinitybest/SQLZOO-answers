--URL: http://sqlzoo.net/wiki/SELECT_from_WORLD_Tutorial
--1
SELECT name, continent, population FROM world
--2
SELECT name FROM world
WHERE population>200000000
--3
SELECT name, gdp/population
FROM world
WHERE population > 200000000
--4
SELECT name, population/1000000
FROM world
WHERE continent = 'South America'
--5
SELECT name, population 
FROM world
WHERE name IN ('France', 'Germany', 'Italy')
--6
SELECT name
FROM world
WHERE name LIKE '%United%'
--7
SELECT name, population, area
FROM world
WHERE area > 3000000
OR population > 250000000
--8
SELECT name, population, area
FROM world
WHERE area > 3000000
XOR population > 250000000
--9
SELECT name, ROUND(population/1000000, 2) AS pop, ROUND(gdp/1000000000, 2) AS gd
FROM world
WHERE continent = 'South America'
--10
SELECT name, FLOOR((gdp/population + 500)/1000)*1000
FROm world
WHERE gdp > 1000000000000
--11
SELECT name, 
       CASE WHEN continent='Oceania' THEN 'Australasia'
            ELSE continent END
  FROM world
 WHERE name LIKE 'N%'
--12
SELECT name, (
CASE 
WHEN continent='Europe' OR continent='Asia' THEN 'Eurasia'
WHEN continent='North America' OR continent='South America' OR continent='Caribbean' THEN 'America'
ELSE continent
END
)
FROM world
WHERE name LIKE 'A%'
OR name LIKE 'B%'
-13
SELECT name, continent, (
CASE 
WHEN continent='Oceania' THEN 'Australasia'
WHEN continent='Eurasia' OR name='Turkey' THEN 'Europe/Asia'
WHEN continent='Caribbean' AND name LIKE 'B%' THEN 'North America'
WHEN continent='Caribbean' AND name NOT LIKE 'b%' THEN 'South America'
ELSE continent
END
) 
FROM world
ORDER BY name ASC


















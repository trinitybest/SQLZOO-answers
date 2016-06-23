--1
SELECT population FROM world
  WHERE name = 'Germany'
--2
SELECT name, gdp/population FROM world
  WHERE area > 5000000
--3
SELECT name, population FROM world
  WHERE name IN ('Ireland', 'Iceland', 'Denmark');
--4
SELECT name, area FROM world
  WHERE area BETWEEN 200000 AND 250000

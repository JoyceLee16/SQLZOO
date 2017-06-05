--#EX1
/*
The total population and GDP of Europe.
*/
SELECT SUM(population), SUM(gdp)
  FROM bbc
 WHERE region = 'Europe'

--#EX2
/*
What are the regions?
*/
SELECT DISTINCT region FROM bbc

--#EX3
/*
Show the name and population for each country with a population of more than 100000000. 
Show countries in descending order of population.
*/
SELECT name, population
  FROM bbc
 WHERE population > 100000000
 ORDER BY population DESC

--#1
/*
List all the continents - just once each.
*/
SELECT name
  FROM world
 WHERE gdp/population >
    (SELECT gdp/population FROM world WHERE name = 'United Kingdom') AND continent = 'Europe'

--#2
/*
List all the continents - just once each.
*/
SELECT DISTINCT(continent) FROM world

--#3
/*
Give the total GDP of Africa
*/
SELECT SUM(gdp) FROM world
 WHERE continent ='Africa'

--#4
/*
How many countries have an area of at least 1000000
*/
SELECT COUNT(name) FROM world
 WHERE area >= 1000000

--#5
/*
What is the total population of ('Estonia', 'Latvia', 'Lithuania')
*/
SELECT SUM(population) FROM world
 WHERE name IN ('Estonia', 'Latvia', 'Lithuania')

--#EX4
/*
For each continent show the number of countries:
*/
SELECT continent, COUNT(name)
  FROM world
 GROUP BY continent

--#EX5
/*
For each continent show the total population:
*/
SELECT continent, SUM(population)
  FROM world
 GROUP BY continent

--#EX6
/*
WHERE and GROUP BY. The WHERE filter takes place before the aggregating function. 
For each relevant continent show the number of countries that has a population of at least 200000000.
*/
SELECT continent, COUNT(name)
  FROM world
 WHERE population>200000000
 GROUP BY continent

--#EX7
/*
GROUP BY and HAVING. The HAVING clause is tested after the GROUP BY. You can test the aggregated values with a HAVING clause. 
Show the total population of those continents with a total population of at least half a billion.
*/
SELECT continent, SUM(population)
  FROM world
 GROUP BY continent
HAVING SUM(population)>500000000
 
--#6
/*
For each continent show the continent and number of countries.
*/
SELECT continent, COUNT(name) FROM world
 GROUP BY continent

--#7
/*
For each continent show the continent and number of countries with populations of at least 10 million.
*/
SELECT continent, COUNT(name) FROM world
WHERE population >= 10000000
GROUP BY continent

--#8
/*
List the continents that have a total population of at least 100 million.
*/
SELECT continent FROM world
GROUP BY continent
HAVING SUM(population) >= 100000000

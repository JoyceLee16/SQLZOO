--#1
/*
List each country name where the population is larger than that of 'Russia'.
*/
SELECT yr, subject, winner
FROM nobel
WHERE yr = 1950

--#2
/*
Show who won the 1962 prize for Literature.
*/
SELECT winner
FROM nobel
WHERE yr = 1962 AND subject = 'Literature'

--#3
/*
Show the year and subject that won 'Albert Einstein' his prize.
*/
SELECT yr, subject
FROM nobel
WHERE winner = 'Albert Einstein'

--#4
/*
Give the name of the 'Peace' winners since the year 2000, including 2000.
*/
SELECT winner
FROM nobel
WHERE subject = 'Peace' AND yr >= 2000

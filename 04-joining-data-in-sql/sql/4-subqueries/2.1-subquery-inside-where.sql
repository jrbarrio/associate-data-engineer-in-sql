-- Select average life_expectancy from the populations table
SELECT AVG(life_expectancy)
FROM populations
-- Filter for the year 2015
WHERE year = 2015;

SELECT *
FROM populations
WHERE year = 2015
-- Filter for only those populations where life expectancy is 1.15 times higher than average
  AND life_expectancy > 1.15 *
  (SELECT AVG(life_expectancy)
   FROM populations
   WHERE year = 2015);
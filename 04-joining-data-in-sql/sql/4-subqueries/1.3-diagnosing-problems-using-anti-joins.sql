-- Select code and name of countries from Oceania
SELECT code, name
FROM countries
WHERE continent = 'Oceania';

SELECT code, name
FROM countries
WHERE continent = 'Oceania'
-- Filter for countries not included in the bracketed subquery
  AND code NOT IN
    (SELECT code
    FROM currencies);
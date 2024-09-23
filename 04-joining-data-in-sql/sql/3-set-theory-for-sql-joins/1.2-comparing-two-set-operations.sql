-- Query that determines all pairs of code and year from economies and populations, without duplicates
SELECT code, year
FROM economies
UNION
SELECT country_code, year
FROM populations;

SELECT code, year
FROM economies
-- Set theory clause
UNION ALL
SELECT country_code, year
FROM populations
ORDER BY code, year;
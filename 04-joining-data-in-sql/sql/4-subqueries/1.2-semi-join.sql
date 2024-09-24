-- Select country code for countries in the Middle East
SELECT code
FROM countries
WHERE region = 'Middle East';

-- Select unique language names
SELECT DISTINCT(name)
FROM languages
-- Order by the name of the language
ORDER BY name ASC;

SELECT DISTINCT name
FROM languages
-- Add syntax to use bracketed subquery below as a filter
WHERE code IN
    (SELECT code
    FROM countries
    WHERE region = 'Middle East')
ORDER BY name;
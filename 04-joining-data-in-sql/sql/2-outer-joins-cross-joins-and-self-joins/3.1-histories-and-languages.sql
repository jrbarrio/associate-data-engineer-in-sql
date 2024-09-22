SELECT c.name AS country, l.name AS language
-- Inner join countries as c with languages as l on code
FROM countries AS c 
INNER JOIN languages AS l
USING(code)
WHERE c.code IN ('PAK','IND')
	AND l.code in ('PAK','IND');

SELECT c.name AS country, l.name AS language
FROM countries AS c        
-- Perform a cross join to languages (alias as l)
CROSS JOIN languages as l
WHERE c.code in ('PAK','IND')
	AND l.code in ('PAK','IND');  
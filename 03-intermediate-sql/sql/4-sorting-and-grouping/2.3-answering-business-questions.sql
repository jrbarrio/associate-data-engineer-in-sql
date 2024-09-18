SELECT release_year, COUNT(DISTINCT language) AS diversity
FROM films
GROUP BY release_year
ORDER BY diversity DESC;
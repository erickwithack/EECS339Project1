SELECT premiered, ROUND(AVG(rating), 2)
FROM titles t
JOIN ratings r ON t.title_id = r.title_id
WHERE t.type = 'movie' 
AND premiered IS NOT NULL
GROUP BY premiered
HAVING ROUND(AVG(rating), 2) > (
    SELECT ROUND(AVG(rating), 2)
    FROM ratings r
    JOIN titles t ON t.title_id = r.title_id
    WHERE t.type='movie')
ORDER BY premiered ASC;
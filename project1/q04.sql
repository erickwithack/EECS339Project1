SELECT t.primary_title, t.premiered, c.characters
FROM titles t 
JOIN crew c ON t.title_id = c.title_id 
JOIN people p ON c.person_id = p.person_id 
WHERE p.name = 'Tom Cruise' AND t.type = 'movie'
ORDER BY t.premiered ASC;

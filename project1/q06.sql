SELECT t.primary_title, r.rating, r.votes
FROM titles t 
JOIN ratings r ON t.title_id = r.title_id
WHERE t.type = 'movie' AND t.premiered = 2022
ORDER BY r.rating DESC, r.votes DESC, t.primary_title ASC
LIMIT 10;
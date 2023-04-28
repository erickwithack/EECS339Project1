SELECT count(t.original_title) as freq
FROM titles t
JOIN crew c on c.title_id=t.title_id
where c.category = 'director' and t.type='movie'
GROUP BY c.person_id
ORDER by freq DESC
LIMIT 1;




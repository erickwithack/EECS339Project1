SELECT p1.name, p2.name, COUNT(*) as count 
FROM crew c1 
JOIN crew c2 ON c1.title_id = c2.title_id AND c1.person_id > c2.person_id
JOIN titles t ON t.title_id = c1.title_id AND c2.title_id = t.title_id
JOIN people p1 ON c1.person_id = p1.person_id 
JOIN people p2 ON c2.person_id = p2.person_id 
WHERE c1.category IN ('actor', 'actress') AND c2.category IN ('actor', 'actress')
GROUP BY p1.name, p2.name
ORDER BY count DESC 
LIMIT 1;

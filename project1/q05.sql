SELECT * 
FROM titles 
WHERE runtime_minutes = (
  SELECT MAX(runtime_minutes) 
  FROM titles
);


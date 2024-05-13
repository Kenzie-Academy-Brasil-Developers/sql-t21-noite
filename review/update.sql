UPDATE cars SET "km" = 125000 WHERE "id" = 1 RETURNING *;

UPDATE cars 
SET 
"year" = 2014, 
"km" = 60000
WHERE "id" = 4
RETURNING *;

UPDATE cars 
SET ("year", "km") = ROW (2014, 60000) 
WHERE "id" = 3 RETURNING *;

WHERE "color" = 'Rosa' AND "size" = 1200;
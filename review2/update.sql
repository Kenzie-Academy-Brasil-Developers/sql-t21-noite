UPDATE todos SET "title" = 'Estou virando o mestre do SQL' WHERE id = 1 RETURNING *;
UPDATE todos SET ("title", "content") = 
ROW ('Virei o mestre do SQL', 'Agora eu sou imbátivel nas consultas') 
WHERE id = 2 RETURNING *;
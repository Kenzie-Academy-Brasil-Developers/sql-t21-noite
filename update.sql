UPDATE todos SET "content" = 'Novo conteúdo 1' WHERE "id" = 4 RETURNING *;
UPDATE todos SET "title" = 'Novo título 1', "content" = 'Novo conteúdo 1'
WHERE "id" = 4 RETURNING *;
UPDATE todos SET ("title", "content") = ROW ('Novo título 2', 'Novo conteúdo 2') 
WHERE "id" = 5 RETURNING *;

UPDATE todos SET "title" = 'Batata'; 
/* Se não tiver o where, todos os itens da tabela serão atualizados */
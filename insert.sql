INSERT INTO todos ("title", "content", "createdAt") 
VALUES ('Estou aprendendo SQL', 'Caramba, é diferentão essa ideia', '06-05-2024');

INSERT INTO todos ("title", "content", "createdAt") 
VALUES ('Estou aprendendo SQL', 'Caramba, é diferentão essa ideia', '06-05-2024') 
RETURNING "title", "content";

INSERT INTO todos ("title", "content", "createdAt") 
VALUES ('Estou aprendendo SQL', 'Caramba, é diferentão essa ideia', '06-05-2024') 
RETURNING *;

INSERT INTO todos ("title", "content")
VALUES ('Nota 1', 'Conteúdo 1'), ('Nota 2', 'Conteúdo 2'), ('Nota 3', 'Conteúdo 3')
RETURNING *;
INSERT INTO todos ("title", "content", "createdAt") 
VALUES ('Estou aprendendo SQL', 'Caramba, é diferentão essa ideia', '06-05-2024');

INSERT INTO todos ("title", "content", "createdAt") 
VALUES ('Estou aprendendo SQL', 'Caramba, é diferentão essa ideia', '06-05-2024') 
RETURNING "title", "content";

INSERT INTO todos ("title", "content", "createdAt") 
VALUES ('Estou aprendendo SQL', 'Caramba, é diferentão essa ideia', '06-05-2024') 
RETURNING *;
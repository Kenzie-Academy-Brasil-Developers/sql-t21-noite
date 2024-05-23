INSERT INTO todos ("title", "content")
VALUES ('Revisando SQL', 'Estou ficando um mestre no SQL'), 
('Estou adicionando mais uma nota', 'Para demonstrar inserção múltipla')
RETURNING *;

INSERT INTO categories ("name")
VALUES ('Estudo'), ('Tecnologia'), ('Programação')
RETURNING *;

INSERT INTO links ("title", "url", "todoId")
VALUES ('PostgreSQL', 'https://www.postgresql.org/', 4)
RETURNING *;

INSERT INTO todos_categories ("todoId", "categoryId")
VALUES (1, 1), (1, 2), (2, 2), (2, 3)
RETURNING *;
/*
CREATE TABLE todos (
    "id" SERIAL PRIMARY KEY,
    "title" VARCHAR(100) NOT NULL, 
    "content" TEXT,
    "createdAt" TIMESTAMP DEFAULT NOW(), 
    "updatedAt" TIMESTAMP
);
*/
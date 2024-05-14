INSERT INTO users ("name", "email", "password")
VALUES ('Thiago Renan', 'thiagorenan@email.com', '1234')
RETURNING *;

INSERT INTO addresses ("street", "number", "cep", "userId")
VALUES ('Rua Qualquer', 123, '83000000', 1)
RETURNING *;

INSERT INTO orders ("status", "userId")
VALUES ('Em preparo', 1), ('Aguardando...', 1)
RETURNING *;

/*
Join
*/

SELECT 
users."id" AS "userId",
users."name",
users."email",
addresses."id" AS "addressId",
addresses."street",
addresses."number",
addresses."complement"
FROM users
JOIN addresses 
ON users."id" = addresses."userId";

SELECT 
users."id" AS "userId",
users."name",
users."email",
orders."id" AS "orderId",
orders."status",
orders."createdAt",
orders."updatedAt"
FROM users
JOIN orders
ON users."id" = orders."userId"
WHERE users."id" = 1;


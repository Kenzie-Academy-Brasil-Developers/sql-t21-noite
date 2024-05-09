SELECT "title", "content" FROM todos;

SELECT * FROM todos;

SELECT * FROM todos WHERE "id" >= 1 AND "id" < 6;
SELECT * FROM todos WHERE "id" > 1;
SELECT * FROM todos WHERE "title" = 'Nota 1';
/* Case sensitive */
SELECT * FROM todos WHERE "title" LIKE 'Nota%'; /* Começa com o termo */
SELECT * FROM todos WHERE "title" LIKE '%1'; /* Termina com o termo */
SELECT * FROM todos WHERE "title" LIKE '%ta%'; /* Inclui o termo */

/* NÃO é case sensitive */
SELECT * FROM todos WHERE "title" ILIKE 'nota%';
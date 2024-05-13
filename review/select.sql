SELECT * FROM cars;

SELECT * FROM cars WHERE "id" = 1;
SELECT * FROM cars WHERE "year" > 2010;
SELECT * FROM cars WHERE "model" = 'Uno';
/* Começa com um termo, termina com um termo, ou ínclui um termo */
/* LIKE - Case sensitive */
/* ILIKE - NÃO é case senstive */
SELECT * FROM cars WHERE "model" ILIKE '%TT';
SELECT * FROM cars WHERE "model" ILIKE 'TT%';
SELECT * FROM cars WHERE "model" ILIKE '%TT%';
/* AND - OR */ 
SELECT * FROM cars WHERE "year" > 2010 AND "km" < 100000;
SELECT * FROM cars WHERE "year" > 2010 OR "km" < 100000;
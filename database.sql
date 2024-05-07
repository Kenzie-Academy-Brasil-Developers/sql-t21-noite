/*
    texto - string
    números - number
    boolean - boolean
*/

/* Criar o banco */

CREATE DATABASE t21_noite;

/* Selecionar */

\c nome_do_banco
\c t21_noite

/* Criar tabela */

CREATE TABLE todos (
    "id" SERIAL PRIMARY KEY,
    "title" VARCHAR(80) NOT NULL,
    "content" TEXT,
    "createdAt" TIMESTAMP, 
    "updatedAt" TIMESTAMP
);

/* Listas todas as tabelas de um banco */

\dt

CREATE TABLE categories (
    "id" SERIAL PRIMARY KEY,
    "name" VARCHAR(50) NOT NULL,
    "createdAt" TIMESTAMP, 
    "updatedAt" TIMESTAMP
);

/* Excluir tabelas */

DROP TABLE categories;
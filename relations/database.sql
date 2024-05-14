CREATE DATABASE t21_relations_noite;

\ c t21_relations_noite 

CREATE TABLE users (
    "id" SERIAL PRIMARY KEY,
    "name" VARCHAR(100) NOT NULL,
    "email" VARCHAR(100) NOT NULL,
    "password" VARCHAR(30) NOT NULL
);

/* 1 p 1 - um usuário pode cadastrar somente UM endereço */

CREATE TABLE addresses (
    "id" SERIAL PRIMARY KEY,
    "street" VARCHAR(100) NOT NULL,
    "number" INTEGER NOT NULL,
    "complement" VARCHAR(20),
    "cep" CHAR(8) NOT NULL,
    "userId" INTEGER UNIQUE NOT NULL,
    FOREIGN KEY ("userId") REFERENCES users("id") ON DELETE CASCADE
);

/* 1 p N - um usuário pode cadastrar muitos pedidos */

CREATE TABLE orders (
    "id" SERIAL PRIMARY KEY,
    "status" VARCHAR(30) NOT NULL,
    "createdAt" TIMESTAMP DEFAULT NOW(),
    "updatedAt" TIMESTAMP,
    "userId" INTEGER,
    FOREIGN KEY ("userId") REFERENCES users("id") ON DELETE SET NULL
);
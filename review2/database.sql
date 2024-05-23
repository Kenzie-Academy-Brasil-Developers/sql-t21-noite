CREATE DATABASE t21_review2;

\c t21_review2

CREATE TABLE todos (
    "id" SERIAL PRIMARY KEY,
    "title" VARCHAR(100) NOT NULL, 
    "content" TEXT,
    "createdAt" TIMESTAMP DEFAULT NOW(), 
    "updatedAt" TIMESTAMP
);

CREATE TABLE links (
    "id" SERIAL PRIMARY KEY,
    "title" VARCHAR(100),
    "url" VARCHAR(250) NOT NULL,
    "todoId" INTEGER NOT NULL,
    FOREIGN KEY ("todoId") REFERENCES todos("id") ON DELETE CASCADE,
    "createdAt" TIMESTAMP DEFAULT NOW(), 
    "updatedAt" TIMESTAMP
);

CREATE TABLE categories (
    "id" SERIAL PRIMARY KEY,
    "name" VARCHAR(50) NOT NULL,
    "createdAt" TIMESTAMP DEFAULT NOW(),
    "updatedAt" TIMESTAMP
);

CREATE TABLE todos_categories (
    "id" SERIAL PRIMARY KEY,
    "todoId" INTEGER NOT NULL,
    FOREIGN KEY ("todoId") REFERENCES todos("id") ON DELETE CASCADE,
    "categoryId" INTEGER NOT NULL,
    FOREIGN KEY ("categoryId") REFERENCES categories("id") ON DELETE CASCADE
);
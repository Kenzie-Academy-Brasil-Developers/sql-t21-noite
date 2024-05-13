CREATE DATABASE t21_review_noite;

\c t21_review_noite

CREATE TABLE cars (
    "id" SERIAL PRIMARY KEY,
    "model" VARCHAR(30) NOT NULL,
    "year" INTEGER NOT NULL,
    "km" INTEGER NOT NULL,
    "createdAt" TIMESTAMP DEFAULT NOW(),
    "updatedAt" TIMESTAMP
);

\dt
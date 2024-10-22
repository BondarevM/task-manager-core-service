--liquibase formatted sql

--changeset BondarevM:1
--comment first migration
CREATE TABLE Users
(
    id SERIAL PRIMARY KEY,
    email VARCHAR(64) UNIQUE NOT NULL,
    password VARCHAR(64) NOT NULL
);

CREATE TABLE Tasks
(
    id  SERIAL PRIMARY KEY,
    title VARCHAR(30) NOT NULL,
    text VARCHAR(30) NOT NULL,
    status VARCHAR(30) NOT NULL,
    task_finished TIMESTAMP NOT NULL,
    owner_id INTEGER NOT NULL REFERENCES Users(id)
);
--rollback truncate table demo;
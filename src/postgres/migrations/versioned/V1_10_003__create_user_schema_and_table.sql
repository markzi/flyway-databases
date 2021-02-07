DROP SCHEMA IF EXISTS "user" CASCADE;
CREATE SCHEMA "user";
CREATE TABLE "user"."user"
(
    id         INT GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
    first_name VARCHAR(100) NOT NULL,
    surname    VARCHAR(100) NOT NULL,
    address_id INT          NOT NULL
);
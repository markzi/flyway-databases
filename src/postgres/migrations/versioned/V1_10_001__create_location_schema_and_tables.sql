DROP SCHEMA IF EXISTS "location" CASCADE;
CREATE SCHEMA "location";
CREATE TABLE "location"."town"
(
    id                    INT GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
    name                  VARCHAR(45),
    county                VARCHAR(32),
    country               VARCHAR(16),
    grid_reference        VARCHAR(8),
    easting               INT,
    northing              INT,
    latitude              NUMERIC(8, 5),
    longitude             NUMERIC(8, 5),
    elevation             INT,
    postcode_sector       VARCHAR(6),
    local_government_area VARCHAR(44),
    nuts_region           VARCHAR(24),
    type                  VARCHAR(13)
);

CREATE TABLE "location"."address"
(
    id          INT GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
    first_line  VARCHAR(100) NOT NULL,
    second_line VARCHAR(100) NULL,
    third_line  VARCHAR(100) NULL,
    town_id     INT          NOT NULL,
    postcode    VARCHAR(100) NOT NULL
);

ALTER TABLE "location"."address"
    ADD CONSTRAINT town_fk FOREIGN KEY (town_id)
        REFERENCES "location"."town" (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION;
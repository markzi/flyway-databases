INSERT INTO "location"."address" (first_line, second_line, third_line, town_id, postcode)
VALUES ('1 Bobcat Street', 'Catisworth', NULL, 1, 'GU7 2AA'),
       ('1 Tolsworth Avenue', 'Empi Hill', NULL, 2, 'BA8 0AB');

INSERT INTO "user"."user" (first_name, surname, address_id)
VALUES ('Wilf','McCormak',1),
       ('Shauna', 'McCormak', 1),
       ('Timmy', 'Chester', 2);
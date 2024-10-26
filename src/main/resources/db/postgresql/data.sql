INSERT INTO types (name) VALUES ('Dog'), ('Cat');

INSERT INTO owners (first_name, last_name, address, city, telephone)
VALUES ('John', 'Doe', '123 Elm St', 'Springfield', '555-1234'),
       ('Jane', 'Smith', '456 Maple Ave', 'Springfield', '555-5678');

INSERT INTO pets (name, birth_date, type_id, owner_id)
VALUES ('Fido', '2021-01-01', 1, 1),
       ('Whiskers', '2022-02-02', 2, 2);

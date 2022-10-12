USE employee_employee;

SELECT * FROM employee_hobby;
SELECT * FROM employee;
SELECT * FROM intermedia;

CREATE TABLE employee_hobby(
	id_hobby INT UNSIGNED AUTO_INCREMENT NOT NULL,
    name_ VARCHAR(30),
    description_ VARCHAR(100),
    PRIMARY KEY (id_hobby)
);

CREATE TABLE intermedia(
	id_intermedia INT UNSIGNED AUTO_INCREMENT NOT NULL,
    fk_employee INT UNSIGNED NOT NULL,
    fk_hobby INT UNSIGNED NOT NULL,
    PRIMARY KEY (id_intermedia)
);

ALTER TABLE intermedia
ADD FOREIGN KEY (fk_employee)
REFERENCES employee(id_employee);

ALTER TABLE intermedia
ADD FOREIGN KEY (fk_hobby)
REFERENCES employee_hobby(id_hobby);

INSERT INTO employee_hobby(name_, description_) 
VALUES ('Salir a caminar', 'Consiste en dar un paseo por algun sitio'),
	   ('Jugar videojuegos', 'Consiste en jugar a algun videojuego en cualquier plataforma'),
       ('Leer', 'Consiste en leer libros, articulos cientificos, comics, etc.');

INSERT INTO intermedia(fk_employee, fk_hobby)
VALUES (1, 1), (1, 2),
       (2, 3), (2, 1),
       (3, 1), (3, 2),
       (4, 1), (4, 2);

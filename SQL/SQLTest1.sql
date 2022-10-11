CREATE DATABASE employee_employee;
USE employee_employee;

CREATE TABLE employee(
	id_employee INT UNSIGNED PRIMARY KEY AUTO_INCREMENT NOT NULL,
	first_name VARCHAR(50) NOT NULL,
	last_name VARCHAR(50) NOT NULL
);

CREATE TABLE employee_department(
	id_department INT UNSIGNED PRIMARY KEY AUTO_INCREMENT NOT NULL,
	Name_ VARCHAR(50) NOT NULL,
	Description_ VARCHAR(100) NOT NULL 
);

ALTER TABLE employee 
	ADD fk_department INT UNSIGNED NOT NULL;
    
ALTER TABLE employee 
	ADD FOREIGN KEY (fk_department) 
    REFERENCES employee_department(id_department);

SELECT * FROM employee;
SELECT * FROM employee_department;

INSERT INTO employee VALUES (1, 'Antonio', 'Martínez', 4);
INSERT INTO employee VALUES (2, 'Miriam', 'Cantú', 2);
INSERT INTO employee VALUES (3, 'Agustin', 'Berrones', 1);
INSERT INTO employee VALUES (4, 'Cesar', 'Garcia', 4);

INSERT INTO employee_department (Name_, Description_) 
VALUES 
	('Departamento de Finanzas', 'Se encarga del control financiero de la empresa.'),
	('Departamento de Recursos Humanos', 'Se encarga de contratar personas.'),
	('Departamento de Marketing y Publicidad', 'Se encarga de idear, planificar, desarrollar y monitorizar a difundir productos y obtener ingresos.'),
	('Departamento de Logística', 'Se encarga de planificar y gestionar los envíos y transportes.'),
	('Departamento Directivo', 'Se conforma por los cargos más altos de la empresa.'),
	('Departamento de Gestión y Administración', 'Se encarga de que la actividad economica de la empresa se ajuste a lo que marca la ley.');



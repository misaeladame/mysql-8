CREATE SCHEMA ejemplo;

-- ALT + 96, comillas invertidas
CREATE TABLE `ejemplo`.`contactos`
(
	`id` INT NOT NULL AUTO_INCREMENT,
    `nombre` VARCHAR(64) NOT NULL,
    `apellidos` VARCHAR(64) NOT NULL,
    `direccion` VARCHAR(255) NOT NULL,
    `celular` VARCHAR(10) NOT NULL,
	`correo` VARCHAR(255) NOT NULL,
    `fecha_nacimiento` DATE DEFAULT NULL,
    `familia` TINYINT DEFAULT NULL,
    PRIMARY KEY(`id`)
);

INSERT INTO `ejemplo`.`contactos` 
(`nombre`, `apellidos`,`direccion`, `celular`, `correo`, `fecha_nacimiento`, `familia`)
VALUES ("Ivan", "Perez", "Calle False 999", "987654321", "ivancito@gmail.com", "1991/01/01", 0);

UPDATE `ejemplo`.`contactos`
SET `nombre` = "Jorge", `correo` = "jorginho@hotmail.com"
WHERE `id` = 2;

DELETE FROM `ejemplo`.`contactos`
WHERE `id` = 3;

ALTER TABLE `ejemplo`.`contactos`
ADD INDEX (nombre);

ALTER TABLE `ejemplo`.`contactos`
ADD INDEX (apellidos);

ALTER TABLE `ejemplo`.`contactos`
ADD INDEX (nombre(20));
-- Cantidad de caracteres

CREATE TABLE `ejemplo`.`contactos`
(
	`id` INT NOT NULL AUTO_INCREMENT,
    `nombre` VARCHAR(64) NOT NULL,
    `apellidos` VARCHAR(64) NOT NULL,
    `direccion` VARCHAR(255) NOT NULL,
    `celular` VARCHAR(10) NOT NULL,
	`correo` VARCHAR(255) NOT NULL,
    `fecha_nacimiento` DATE DEFAULT NULL,
    `familia` TINYINT DEFAULT NULL,
    PRIMARY KEY(`id`),
    INDEX(nombre),
    INDEX(apellidos)
);

ALTER TABLE ejemplo.contactos
ADD FULLTEXT(direccion);

CREATE TABLE ejemplo.contactos2
(
	id INT NOT NULL AUTO_INCREMENT,
    nombre VARCHAR(64) NOT NULL,
    apellidos VARCHAR(64) NOT NULL,
    direccion VARCHAR(255) NOT NULL,
    telefono VARCHAR(10) NOT NULL,
	correo VARCHAR(255) NOT NULL,
    fecha_nacimiento DATE DEFAULT NULL,
    familia TINYINT DEFAULT NULL,
    PRIMARY KEY(id),
    INDEX(nombre),
    INDEX(apellidos),
    FULLTEXT(direccion)
);

INSERT INTO `ejemplo`.`contactos2` 
(`nombre`, `apellidos`,`direccion`, `telefono`, `correo`, `fecha_nacimiento`, `familia`)
VALUES ("Ivan", "Perez", "Calle False 999", "987654321", "ivancito@gmail.com", "1991/01/01", 0);

INSERT INTO `ejemplo`.`contactos2` 
(`nombre`, `apellidos`,`direccion`, `telefono`, `correo`, `fecha_nacimiento`, `familia`)
VALUES ("Misael", "Adame", "Calle False 669", "987654329", "pepe@gmail.com", "2000/01/01", 0);

INSERT INTO `ejemplo`.`contactos2` 
(`nombre`, `apellidos`,`direccion`, `telefono`, `correo`, `fecha_nacimiento`, `familia`)
VALUES ("Jorge", "Suarez", "Calle False 111", "127654329", "jsua@gmail.com", "2002/01/01", 0);

INSERT INTO `ejemplo`.`contactos2` 
(`nombre`, `apellidos`,`direccion`, `telefono`, `correo`, `fecha_nacimiento`, `familia`)
VALUES ("Hernan", "Soto", "Calle False 666", "127964329", "hsl@gmail.com", "2002/02/09", 1);

INSERT INTO `ejemplo`.`contactos2` 
(`nombre`, `apellidos`,`direccion`, `telefono`, `correo`, `fecha_nacimiento`, `familia`)
VALUES ("Maura", "Santana", "Calle False 333", "126964329", "maura@gmail.com", "2002/02/28", 1);


SELECT * FROM ejemplo.contactos;

SELECT * FROM ejemplo.contactos2;

SELECT id, nombre, apellidos, direccion, telefono, correo, fecha_nacimiento 
FROM ejemplo.contactos2;

SELECT *
FROM ejemplo.contactos2;

SELECT nombre, apellidos, direccion
FROM ejemplo.contactos2;

SELECT COUNT(*)
FROM ejemplo.contactos2;

SELECT DISTINCT direccion
FROM ejemplo.contactos2;

SELECT *
FROM ejemplo.contactos2
WHERE nombre="Misael";

SELECT *
FROM ejemplo.contactos2
WHERE apellidos="Soto";

-- Antes de Soto puede existir otra palabra
SELECT *
FROM ejemplo.contactos2
WHERE apellidos LIKE "%Soto";

SELECT *
FROM ejemplo.contactos2
WHERE apellidos LIKE "%Soto" LIMIT 2;

SELECT *
FROM ejemplo.contactos2
WHERE apellidos LIKE "%Soto" LIMIT 1,2;

UPDATE ejemplo.contactos2 
SET telefono="12345678" 
WHERE apellidos LIKE "%Adame%";

DROP TABLE ejemplo.contactos;

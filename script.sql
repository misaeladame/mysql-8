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

SELECT * FROM ejemplo.contactos;

SELECT * FROM ejemplo.contactos2;

DROP TABLE ejemplo.contactos;

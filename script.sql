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

SELECT * FROM ejemplo.contactos;

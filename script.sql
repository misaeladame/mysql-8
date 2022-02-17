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
)
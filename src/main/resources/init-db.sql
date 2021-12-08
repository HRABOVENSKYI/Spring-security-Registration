-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS = @@UNIQUE_CHECKS, UNIQUE_CHECKS = 0;
SET @OLD_FOREIGN_KEY_CHECKS = @@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS = 0;
SET @OLD_SQL_MODE = @@SQL_MODE, SQL_MODE =
        'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema registration
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema registration
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `registration` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `registration`;

-- -----------------------------------------------------
-- Table `registration`.`users`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `registration`.`users`;
CREATE TABLE IF NOT EXISTS `registration`.`users`
(
    `id`         BIGINT       NOT NULL AUTO_INCREMENT,
    `email`      VARCHAR(255) NOT NULL,
    `first_name` VARCHAR(255) NOT NULL,
    `last_name`  VARCHAR(255) NOT NULL,
    `password`   VARCHAR(255) NOT NULL,
    `role`       VARCHAR(255) NOT NULL DEFAULT 'USER',
    `status`     VARCHAR(255) NOT NULL DEFAULT 'ACTIVE',
    PRIMARY KEY (`id`)
)
    ENGINE = InnoDB
    DEFAULT CHARACTER SET = utf8mb4
    COLLATE = utf8mb4_0900_ai_ci;


INSERT INTO `registration`.`users` (`email`, `first_name`, `last_name`, `password`, `role`, `status`)
VALUES ('admin@gmail.com', 'Admin', 'Adminov', '$2a$12$LHdyP3GgXuVn40NzhFqh0.E20HK.ICp.85GIpnte6WMdUnNrezBCO', 'ADMIN',
        'ACTIVE');
INSERT INTO `registration`.`users` (`email`, `first_name`, `last_name`, `password`, `role`, `status`)
VALUES ('user@gmail.com', 'User', 'Userov', '$2a$12$LHdyP3GgXuVn40NzhFqh0.E20HK.ICp.85GIpnte6WMdUnNrezBCO', 'USER',
        'BANNED');
INSERT INTO `registration`.`users` (`email`, `first_name`, `last_name`, `password`, `role`, `status`)
VALUES ('u@gmail.com', 'User', 'Userov', '$2a$12$LHdyP3GgXuVn40NzhFqh0.E20HK.ICp.85GIpnte6WMdUnNrezBCO', 'USER',
        'ACTIVE');


SET SQL_MODE = @OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS = @OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS = @OLD_UNIQUE_CHECKS;

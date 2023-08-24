DROP SCHEMA IF EXISTS `training_db`;

CREATE SCHEMA IF NOT EXISTS `training_db`
CHARACTER SET `utf8`;

USE `training_db`;

CREATE TABLE `categories` (
	`id` INTEGER NOT NULL PRIMARY KEY AUTO_INCREMENT,
	`category_name` VARCHAR(255) NOT NULL
);

CREATE TABLE `courses` (
	`id` INTEGER NOT NULL PRIMARY KEY AUTO_INCREMENT,
	`course_name` VARCHAR(555) NOT NULL,
	`fk_category_id` INTEGER default NULL,

	CONSTRAINT `fk_course_to_category` FOREIGN KEY (`fk_category_id`) REFERENCES `categories` (`id`)
		ON DELETE CASCADE
		ON UPDATE CASCADE
);

CREATE TABLE `accounts` (
	`id` INTEGER NOT NULL PRIMARY KEY AUTO_INCREMENT,
	`email` VARCHAR(255) NOT NULL,
	`password` VARCHAR(255) NOT NULL
);

CREATE TABLE `profiles` (
	`id` INTEGER NOT NULL AUTO_INCREMENT,
	`first_name` VARCHAR(255) NOT NULL,
	`last_name` VARCHAR(255) NOT NULL,
	`middle_name` VARCHAR(255) DEFAULT NULL,

	PRIMARY KEY (`id`),

	CONSTRAINT `fk_to_account` FOREIGN KEY (`id`) REFERENCES `accounts` (`id`)
		ON DELETE CASCADE
		ON UPDATE CASCADE
);

CREATE TABLE `accounts_to_courses` (
	`fk_account_id` INTEGER NOT NULL,
	`fk_course_id` INTEGER NOT NULL,

	PRIMARY KEY (`fk_account_id`, `fk_course_id`),

	CONSTRAINT `fk_to_profile` FOREIGN KEY (`fk_account_id`) REFERENCES `accounts` (`id`)
		ON DELETE CASCADE
		ON UPDATE CASCADE,

	CONSTRAINT `fk_to_course` FOREIGN KEY (`fk_course_id`) REFERENCES `courses` (`id`)
		ON DELETE RESTRICT
		ON UPDATE RESTRICT
);

INSERT INTO `categories` (`id`, `category_name`) VALUES (1, 'Программирование');
INSERT INTO `categories` (`id`, `category_name`) VALUES (2, 'Выживание');
INSERT INTO `categories` (`id`, `category_name`) VALUES (3, 'Рукоделие');

INSERT INTO `courses` (`id`, `course_name`, `fk_category_id`) VALUES (1, 'Java Enterprise Edition', 1);
INSERT INTO `courses` (`id`, `course_name`, `fk_category_id`) VALUES (2, 'Езда в троллейбусе в час пик', 2);

INSERT INTO `accounts` (`id`, `email`, `password`) VALUES (1, 'ivan@gmail.com', 'ivan_secret_123');
INSERT INTO `accounts` (`id`, `email`, `password`) VALUES (2, 'petr@gmail.com', 'petr_secret_123');
INSERT INTO `accounts` (`id`, `email`, `password`) VALUES (3, 'sidor@gmail.com', 'sidor_secret_123');

INSERT INTO `profiles` (`id`, `first_name`, `last_name`, `middle_name`) VALUES (1, 'Ivan', 'Ivanov', 'Ivanovich');
INSERT INTO `profiles` (`id`, `first_name`, `last_name`, `middle_name`) VALUES (2, 'Petr', 'Petrov', 'Petrovich');
INSERT INTO `profiles` (`id`, `first_name`, `last_name`, `middle_name`) VALUES (3, 'Sidor', 'Sidorov', 'Sidorovich');

INSERT INTO `accounts_to_courses` (`fk_account_id`, `fk_course_id`) VALUES (1, 1);
INSERT INTO `accounts_to_courses` (`fk_account_id`, `fk_course_id`) VALUES (1, 2);
INSERT INTO `accounts_to_courses` (`fk_account_id`, `fk_course_id`) VALUES (2, 1);
INSERT INTO `accounts_to_courses` (`fk_account_id`, `fk_course_id`) VALUES (2, 2);
INSERT INTO `accounts_to_courses` (`fk_account_id`, `fk_course_id`) VALUES (3, 1);

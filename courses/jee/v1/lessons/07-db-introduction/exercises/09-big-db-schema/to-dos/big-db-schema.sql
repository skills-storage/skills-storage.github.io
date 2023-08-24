DROP SCHEMA IF EXISTS `training_db`;

CREATE SCHEMA IF NOT EXISTS `training_db`
CHARACTER SET `utf8`;

USE `training_db`;

CREATE TABLE `roles` (
  `id` INTEGER NOT NULL PRIMARY KEY AUTO_INCREMENT,
  `role_name` VARCHAR(255) NOT NULL
);

CREATE TABLE `accounts` (
  `id` INTEGER NOT NULL PRIMARY KEY AUTO_INCREMENT,
  `email` VARCHAR(255) NOT NULL,
  `password` VARCHAR(255) NOT NULL
);

CREATE TABLE `accounts_to_roles` (
  `id` INTEGER NOT NULL PRIMARY KEY AUTO_INCREMENT,
  `fk_role_id` INTEGER NOT NULL,
  `fk_account_id` INTEGER NOT NULL,

  CONSTRAINT `fk_to_role` FOREIGN KEY (`fk_role_id`) REFERENCES `roles` (`id`)
    ON DELETE RESTRICT
    ON UPDATE RESTRICT,

  CONSTRAINT `fk_to_account` FOREIGN KEY (`fk_account_id`) REFERENCES `accounts` (`id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE
);

CREATE TABLE `profiles` (
  `id` INTEGER NOT NULL PRIMARY KEY AUTO_INCREMENT,
  `first_name` VARCHAR(255) NOT NULL,
  `last_name` VARCHAR(255) NOT NULL,
  `middle_name` VARCHAR(255) DEFAULT NULL
);

CREATE TABLE `categories` (
  `id` INTEGER NOT NULL PRIMARY KEY AUTO_INCREMENT,
  `category_name` VARCHAR(255) NOT NULL
);

CREATE TABLE `courses` (
  `id` INTEGER NOT NULL PRIMARY KEY AUTO_INCREMENT,
  `course_name` VARCHAR(555) NOT NULL,
  `fk_category_id` INTEGER default NULL,
  `fk_profile_id` INTEGER NOT NULL,

  CONSTRAINT `fk_course_to_category` FOREIGN KEY (`fk_category_id`) REFERENCES `categories` (`id`)
    ON DELETE RESTRICT
    ON UPDATE RESTRICT,

  CONSTRAINT `fk_course_to_profile` FOREIGN KEY (`fk_profile_id`) REFERENCES `profiles` (`id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE
);

CREATE TABLE `lessons` (
  `id` INTEGER NOT NULL PRIMARY KEY AUTO_INCREMENT,
  `lesson_name` VARCHAR(755) NOT NULL,
  `lesson_order` INTEGER NOT NULL,
  `fk_course_id` INTEGER default NULL,

  CONSTRAINT `fk_lesson_to_course` FOREIGN KEY (`fk_course_id`) REFERENCES `courses` (`id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE
);

CREATE TABLE `groups` (
  `id` INTEGER NOT NULL AUTO_INCREMENT,
  `group_name` VARCHAR(255) NOT NULL,
  `start_traning_date` DATETIME NOT NULL,
  `fk_course_id` INTEGER NOT NULL,

  PRIMARY KEY  (`id`),

  CONSTRAINT `fk_group_to_course` FOREIGN KEY (`fk_course_id`) REFERENCES `courses` (`id`)
    ON DELETE RESTRICT
    ON UPDATE RESTRICT
);

CREATE TABLE `profiles_to_groups` (
  `id` INTEGER NOT NULL PRIMARY KEY AUTO_INCREMENT,
  `fk_profile_id` INTEGER NOT NULL,
  `fk_group_id` INTEGER NOT NULL,

  CONSTRAINT `fk_to_profile` FOREIGN KEY (`fk_profile_id`) REFERENCES `profiles` (`id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,

  CONSTRAINT `fk_to_group` FOREIGN KEY (`fk_group_id`) REFERENCES `groups` (`id`)
    ON DELETE RESTRICT
    ON UPDATE RESTRICT
);

INSERT INTO `roles` (`id`, `role_name`) VALUES (1, 'Administrator');
INSERT INTO `roles` (`id`, `role_name`) VALUES (2, 'Prepod');
INSERT INTO `roles` (`id`, `role_name`) VALUES (3, 'Student');

INSERT INTO `accounts` (`id`, `email`, `password`) VALUES (1, '123', '123');

INSERT INTO `accounts_to_roles` (`fk_role_id`, `fk_account_id`) VALUES (1, 1);
INSERT INTO `accounts_to_roles` (`fk_role_id`, `fk_account_id`) VALUES (2, 1);

INSERT INTO `profiles` (`id`, `first_name`, `last_name`, `middle_name`) VALUES (1, 'Михаил', 'Лазаревич', null);

 ALTER TABLE `accounts`
  ADD CONSTRAINT `fk_account_to_profile` FOREIGN KEY (`id`) REFERENCES `profiles` (`id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE;

ALTER TABLE `profiles`
  ADD CONSTRAINT `fk_profile_to_account` FOREIGN KEY (`id`) REFERENCES `accounts` (`id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE;

INSERT INTO `categories` (`id`, `category_name`) VALUES (1, 'Программирование');
INSERT INTO `categories` (`id`, `category_name`) VALUES (2, 'Выживание');
INSERT INTO `categories` (`id`, `category_name`) VALUES (3, 'Рукоделие');

INSERT INTO `courses` (`id`, `course_name`, `fk_category_id`, `fk_profile_id`) VALUES (1, 'Java Enterprise Edition', 1, 1);
INSERT INTO `courses` (`id`, `course_name`, `fk_category_id`, `fk_profile_id`) VALUES (2, 'Езда в троллейбусе в час пик', 2, 1);

INSERT INTO `lessons` (`lesson_name`, `lesson_order`, `fk_course_id`) VALUES ('Web Development - HTML, CSS, JS', 1, 1);
INSERT INTO `lessons` (`lesson_name`, `lesson_order`, `fk_course_id`) VALUES ('Web Development on Java Platform', 2, 1);
INSERT INTO `lessons` (`lesson_name`, `lesson_order`, `fk_course_id`) VALUES ('Servlets API', 3, 1);
INSERT INTO `lessons` (`lesson_name`, `lesson_order`, `fk_course_id`) VALUES ('JSP - Java Server Pages', 4, 1);

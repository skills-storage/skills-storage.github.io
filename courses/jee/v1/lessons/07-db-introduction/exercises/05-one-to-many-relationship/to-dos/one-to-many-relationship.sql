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
    ON DELETE RESTRICT
    ON UPDATE RESTRICT
);

INSERT INTO `categories` (`id`, `category_name`) VALUES (1, 'Программирование');
INSERT INTO `categories` (`id`, `category_name`) VALUES (2, 'Выживание');
INSERT INTO `categories` (`id`, `category_name`) VALUES (3, 'Рукоделие');

INSERT INTO `courses` (`course_name`, `fk_category_id`) VALUES ('Java Standard Edition (JSE)', 1);
INSERT INTO `courses` (`course_name`, `fk_category_id`) VALUES ('Java Enterprise Edition (JEE)', 1);
INSERT INTO `courses` (`course_name`, `fk_category_id`) VALUES ('Езда в троллейбусе в час пик', 2);

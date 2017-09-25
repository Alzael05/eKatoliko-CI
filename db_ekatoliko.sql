CREATE DATABASE `db_ekatoliko`;
USE `db_ekatoliko`;

CREATE TABLE `db_ekatoliko`.`tbl_user` (
  `user_id` INT NOT NULL AUTO_INCREMENT,
  `user_username` NVARCHAR(100) NULL,
  `user_password` NVARCHAR(100) NOT NULL,
  `user_password_salt` NVARCHAR(100) NOT NULL,
  `user_type` NVARCHAR(2) NOT NULL,
  `user_recovercode` NVARCHAR(100) NULL,
  `bln_isdeleted` TINYINT(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`user_id`),
  UNIQUE INDEX `user_id_UNIQUE` (`user_id` ASC),
  UNIQUE INDEX `user_username_UNIQUE` (`user_username` ASC),
  UNIQUE INDEX `user_recovercode_UNIQUE` (`user_recovercode` ASC));


CREATE TABLE `db_ekatoliko`.`tbl_user_details` (
  `user_id` INT NOT NULL,
  `user_firstname` NVARCHAR(100) NOT NULL,
  `user_middlename` NVARCHAR(100) NOT NULL,
  `user_lastname` NVARCHAR(100) NOT NULL,
  `user_address` TEXT NULL,
  `user_birthdate` DATE NULL,
  `user_cellnumber` NVARCHAR(50) NULL,
  `user_tellnumber` NVARCHAR(50) NULL,
  `user_email` TEXT NOT NULL,
  `ts_created_at` TIMESTAMP NULL,
  `ts_updated_at` TIMESTAMP NULL,
  UNIQUE INDEX `user_id_UNIQUE` (`user_id` ASC),
  CONSTRAINT `fk_user_details_id`
    FOREIGN KEY (`user_id`)
    REFERENCES `db_ekatoliko`.`tbl_user` (`user_id`)
    ON DELETE RESTRICT
    ON UPDATE RESTRICT);


CREATE TABLE `db_ekatoliko`.`tbl_user_sessions` (
  `user_id` INT NOT NULL,
  `str_session_id` NVARCHAR(100) NULL,
  `bln_is_logged_in` TINYINT(1) NOT NULL DEFAULT 0,
  `bln_is_session_timeout` TINYINT(1) NULL DEFAULT 0,
  `ts_logged_in` TIMESTAMP NULL,
  `ts_logged_out` TIMESTAMP NULL,
  UNIQUE INDEX `str_session_id_UNIQUE` (`str_session_id` ASC),
  PRIMARY KEY (`str_session_id`),
  UNIQUE INDEX `user_id_UNIQUE` (`user_id` ASC),
  CONSTRAINT `fk_user_sessions_id`
    FOREIGN KEY (`user_id`)
    REFERENCES `db_ekatoliko`.`tbl_user` (`user_id`)
    ON DELETE RESTRICT
    ON UPDATE RESTRICT);


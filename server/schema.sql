DROP DATABASE chat;

CREATE DATABASE chat;

USE chat;

-- CREATE TABLE messages (
--   /* Describe your table here.*/
--   message_id int,
--   messages varchar(255),
--   user_id int,
--   room_id int,
--   PRIMARY KEY (message_id),
--   FOREIGN KEY (user_id) REFERENCES users (user_id),
--   FOREIGN KEY (room_id) REFERENCES rooms (room_id)
-- );

-- /* Create other tables and define schemas for them here! */
-- CREATE TABLE users (
--   user_id int,
--   user varchar(255),
--   PRIMARY KEY (user_id)  
-- );

-- CREATE TABLE rooms (
--   room_id int,
--   room varchar(255),
--   PRIMARY KEY (room_id)
-- );

-- ---
-- Globals
-- ---

-- SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
-- SET FOREIGN_KEY_CHECKS=0;

-- ---
-- Table 'messages'
-- 
-- ---

DROP TABLE IF EXISTS `messages`;
    
CREATE TABLE `messages` (
  `message_id` INTEGER,
  `messages` VARCHAR(255),
  `user_id` INTEGER,
  `room_id` INTEGER,
  PRIMARY KEY (`message_id`)
);

-- ---
-- Table 'users'
-- 
-- ---

DROP TABLE IF EXISTS `users`;
    
CREATE TABLE `users` (
  `id` INTEGER,
  `user` VARCHAR(255),
  PRIMARY KEY (`id`)
);

-- ---
-- Table 'room'
-- 
-- ---

DROP TABLE IF EXISTS `room`;
    
CREATE TABLE `room` (
  `room_id` INTEGER,
  `room` VARCHAR(255),
  PRIMARY KEY (`room_id`)
);

-- ---
-- Foreign Keys 
-- ---

ALTER TABLE `messages` ADD FOREIGN KEY (user_id) REFERENCES `users` (`id`);
ALTER TABLE `messages` ADD FOREIGN KEY (room_id) REFERENCES `room` (`room_id`);

-- ---
-- Table Properties
-- ---

-- ALTER TABLE `messages` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `users` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `room` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ---
-- Test Data
-- ---

-- INSERT INTO `messages` (`message_id`,`messages`,`user_id`,`room_id`) VALUES
-- ('','','','');
-- INSERT INTO `users` (`id`,`user`) VALUES
-- ('','');
-- INSERT INTO `room` (`room_id`,`room`) VALUES
-- ('','');



/*  Execute this file from the command line by typing:
 *    mysql -u root < server/schema.sql
 *  to create the database and the tables.*/


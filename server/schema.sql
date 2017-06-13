DROP DATABASE chat;

CREATE DATABASE chat;

USE chat;

CREATE TABLE messages (
  /* Describe your table here.*/
  message_id int,
  messages varchar(255),
  user_id int,
  room_id int,
  PRIMARY KEY (message_id)
);

/* Create other tables and define schemas for them here! */
CREATE TABLE users (
  user_id int,
  user varchar(255),
  PRIMARY KEY (user_id)  
);

CREATE TABLE rooms (
  room_id int,
  room varchar(255),
  PRIMARY KEY (room_id)
);



/*  Execute this file from the command line by typing:
 *    mysql -u root < server/schema.sql
 *  to create the database and the tables.*/


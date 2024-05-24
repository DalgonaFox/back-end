CREATE DATABASE IF NOT EXISTS Users;
USE Users;

CREATE TABLE IF NOT EXISTS User(
idUser INT AUTO_INCREMENT PRIMARY KEY;
username varchar(50) NOT NULL, 
password varchar(10) NOT NULL);

INSERT INTO user (username, password) values ('may', 'admin123');
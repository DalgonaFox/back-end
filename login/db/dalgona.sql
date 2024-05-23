create database dalgona;

use dalgona;

create table usuario (
	id int primary key,
	usermame varchar(30),
    password varchar(30)
);

drop table usuario;

insert into usuario values
(1, 'Milena', '2002');
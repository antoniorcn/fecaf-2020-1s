create database pets;

use pets;

create table pet (
	id int auto_increment primary key,
	nome char(100) not null,
	tipo char(30) not null,
	raca char(50),
	peso decimal(6, 1),
	nascimento date	
);
create database pets;
use pets;
create table tbl_usuarios (
	usuario char(20),
	nome varchar(100),
	email varchar(100),
	telefone varchar(20),
	password varchar(20),
	perfil varchar(20)
);
insert into tbl_usuarios 
VALUES ('antonio', 'Antonio Carvalho',
'antoniorcn@hotmail.com', '(11)12345-12344',
'123456', 'admin');
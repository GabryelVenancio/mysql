/**
	Lojinha
    @author Gabryel
    @version 1.0
*/

create database lojinhagabryel;
use lojinhagabryel;
create table produtos (
	codigo int primary key auto_increment,
	produto varchar(255) not null,
    quantidade int not null,
    valor decimal(10,2) not null
    
);
show tables;

describe produtos;
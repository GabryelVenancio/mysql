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

-- CRUD CREATE
insert into produtos(codigo,produto,quantidade,valor)
values ('1','Air Jordan 1','100','500.00');

insert into produtos(codigo,produto,quantidade,valor)
values ('2','Air Max 97','250','600.00');

insert into produtos(codigo,produto,quantidade,valor)
values ('3','Dunk High 1985','150','400.00');

insert into produtos(codigo,produto,quantidade,valor)
values ('4','MB 01 RICK & MORTY','10','900.00');

insert into produtos(codigo,produto,quantidade,valor)
values ('5','TÊNIS TRAE YOUNG 1','50','649.00');

insert into produtos(codigo,produto,quantidade,valor)
values ('6','Air Force 1','400','399.00');

-- CRUD READ
select * from produtos;

-- CRUD UPDATE
update produtos set quantidade='5' where codigo=4;
update produtos set quantidade='93' where codigo=3;
update produtos set quantidade='30' where codigo=5;

-- CRUD DELETE
delete from produtos where codigo=1;
delete from produtos where codigo=2;


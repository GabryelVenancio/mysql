/**
    Agenda de contatos
    @author Gabryel
*/

-- Verificar bancos de dados
show databases;

-- Criar um novo banco de dados
create database teste;
create database agendagabryel;

-- Excluir um banco de dados 
drop database teste;

-- Selecionar o banco de dados
use agendagabryel;

-- Criando uma tabela
-- int -> tipo de dados - números inteiros
-- decimal(10,2) -> tipo de dados - números não inteiros
-- (10,2) 10 dígitos com 2 casa decimais
-- primary key (transforma o campo em chave primária)
-- auto_increment (numeração automática)
-- varchar(255) -> tipo de dados String (com variação)
-- char(255) -> tipo de dados String (sem variação)
-- (255) -> máximo de caracteres
-- not null (obrigatório o preenchimento)

create table contatos (
	id int primary key auto_increment,
	nome varchar(255) not null,
    fone varchar(255) not null,
    email varchar(255)
);

-- verificar tabelas do banco
show tables;

-- descrever a tabela
describe contatos;

-- adicionando uma coluna(campo) a tabela
alter table contatos add column obs varchar(255);

-- adicionando uma coluna(campo) a tabela
alter table contatos add column fone2 varchar(255);

-- adicionando uma coluna(campo) a tabela após um campo
alter table contatos add column cel varchar(255) after fone;

-- modificando uma propriedade da coluna (campo) tabela
alter table contatos modify column cel varchar(255) not null;

-- excluir uma coluna(campo) da tabela
alter table contatos drop column obs;

-- Excluir a tabela
drop table contatos;

/***** CRUD *****/

-- CRUD CREATE
-- inserir um registro na tabela
-- tipo varchar ou char usar 'aspas simples'
insert into contatos(nome,fone,email)
values ('Gabryel','4002-8922','gabryel@gmail.com');

insert into contatos(nome,fone)
values ('João','7070-0000');

insert into contatos(fone,email)
values ('9999-0000','linus@gmail.com');

insert into contatos(nome,fone,email)
values ('Vilson','1234-4321','vilson@gmail.com');

insert into contatos(nome,fone,email)
values ('Vava','2222-3333','vava@gmail.com');

insert into contatos(nome,fone,email)
values ('Vivi','4444-5555','vivi@gmail.com');

insert into contatos(nome,fone,email)
values ('Rai','5555-6666','rai@gmail.com');

insert into contatos(nome,fone)
values ('Zé','9876-5432');

-- CRUD READ
-- seleção de todos os registros da tabela
select * from contatos;

-- seleção de um registro(contato) específico
select * from contatos where id=2;
select * from contatos where nome='Rai';
select * from contatos where nome='v%';


select nome,fone from contatos;
select nome,fone,email from contatos order by nome;
select nome,fone,email from contatos order by nome desc;

-- CRUD UPDATE
-- where escolhe o id

update contatos set email='ze@gmail.com' where id=8;
update contatos set nome='Linus' where id=3;
update contatos set nome='Robson da Silva',fone='3532-2898',
email='vaamonde@gamil.com' where id=5;

-- CRUD DELETE
delete from contatos where id=8;
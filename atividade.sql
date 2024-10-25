create database atividadeInsana_1e;
use atividadeInsana_1e;

create table tbl_cliente (
id int not null primary key auto_increment,
nome varchar (100) not null,
idade int not null,
sexo varchar (1) not null,
email varchar (100) not null,
telefone varchar (15) not null,
endereco varchar (225) not null
);
drop table tbl_cliente;

insert into tbl_cliente (nome, idade, sexo, email, telefone, endereco)
values ("Ricardo Limão Ferreira",20, "M", "ricardo.ferreira@exemplo.com", "91111-2222", "Rua Cereal"),
("Beatriz Banana",25, "F", " beatriz.araujo@exemplo.com", "97777-8888", "Alameda Melão"),
("Marcos Pão Silva",25, "M", "marcos.silva@exemplo.com", "95555-6666", "Rua Cereal"),
("Carlos Chocolate ",17, "M", " carlos.abreu@exemplo.com", "91234-5678", "Avenida Brigadeiro"),
("Sara Pera",17, "F", "sara.borges@exemplo.com", "99876-5432", "Travessa Goiaba")

DELIMITER $$
CREATE PROCEDURE VerificarIdadeMaiorQue18()
BEGIN
    SELECT nome, idade 
    FROM tbl_cliente 
    WHERE idade > 18;
END $$
DELIMITER ;

DELIMITER $$
CREATE PROCEDURE VerificarIdadeMenorQue18()
BEGIN
    SELECT nome, idade 
    FROM tbl_cliente 
    WHERE idade < 18;
END $$
DELIMITER ;

CALL VerificarIdadeMaiorQue18();
CALL VerificarIdadeMenorQue18();
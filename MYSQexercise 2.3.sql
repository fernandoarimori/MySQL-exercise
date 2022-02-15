/*
Atividade 3

Crie um banco de dados para um serviço de farmácia de uma empresa, o nome do banco deverá ter o seguinte nome db_farmacia_do_bem, onde o sistema trabalhará com as informações dos produtos
 desta empresa. 
O sistema trabalhará com 2 tabelas tb_produto e tb_categoria.
siga  exatamente esse passo a passo:
Crie uma tabela de categorias utilizando a habilidade de abstração e determine 3 atributos relevantes do tb_categoria para se trabalhar com o serviço desta farmacia.
Crie uma tabela de tb_produto e utilizando a habilidade de abstração e determine 5 atributos relevantes dos tb_produto para se trabalhar com o serviço deste 
farmacia(não esqueça de criar a foreign key de tb_categoria nesta tabela).
Popule esta tabela Categoria com até 5 dados.
Popule esta tabela Produto com até 8 dados.
Faça um select que retorne os Produtos com o valor maior do que 50 reais.
Faça um select trazendo  os Produtos com valor entre 3 e 60 reais.
Faça um select  utilizando LIKE buscando os Produtos com a letra B.
Faça um um select com Inner join entre  tabela categoria e produto.
Faça um select onde traga todos os Produtos de uma categoria específica (exemplo todos os produtos que são cosméticos).
salve as querys para cada uma dos requisitos o exercício em um arquivo .SQL ou texto e coloque no seu GitHuB pessoal e compartilhe esta atividade.

*/

create database db_farmacia_do_bem;
use db_farmacia_do_bem;

create table tb_pro (
id int(5) auto_increment,
nome varchar(20),
marca varchar(20),
dose int,
cap int,
valor float,
primary key (id)
);

insert into tb_pro (nome, marca, dose, cap, valor) values ("ASD", "DASDD", 10, 60, 34.00);
insert into tb_pro (nome, marca, dose, cap, valor) values ("DSFSD", "DASDD", 150, 160, 30.00);
insert into tb_pro (nome, marca, dose, cap, valor) values ("DSFGSR", "DSFSDF", 410, 260, 50.00);
insert into tb_pro (nome, marca, dose, cap, valor) values ("DSFG", "ERWE", 10, 360, 5.00);
insert into tb_pro (nome, marca, dose, cap, valor) values ("FGDFG", "REWR", 10, 360, 140.00);
insert into tb_pro (nome, marca, dose, cap, valor) values ("DFSG", "DSF", 10, 60, 230.00);
insert into tb_pro (nome, marca, dose, cap, valor) values ("FDGVDF", "DEWRD", 10, 360, 4.00);
insert into tb_pro (nome, marca, dose, cap, valor) values ("FSDFFDG", "WERDD", 10, 160, 40.00);

create table tb_cat(
id int(8) auto_increment,
tarja varchar(10),
validade int,
kid varchar(3),
foreign key (id) references tb_pro (id)
);

insert into tb_cat(tarja, validade, kid) values ("preta", 2022, "não");
insert into tb_cat(tarja, validade, kid) values ("vermalha", 2023, "sim");
insert into tb_cat(tarja, validade, kid) values ("preta", 2024, "não");
insert into tb_cat(tarja, validade, kid) values ("livre", 2025, "sim");
insert into tb_cat(tarja, validade, kid) values ("livre", 2026, "sim");	


select nome, valor from tb_pro where valor >50;
select nome, valor from tb_pro where valor between 3 and 60;

select tb_pro.nome, tb_pro.valor, tb_cat.tarja from tb_cat
inner join tb_pro on tb_pro.id=tb_cat.id
where nome like "%d%";


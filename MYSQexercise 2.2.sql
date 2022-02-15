/*
Atividade 2
Crie um banco de dados para um serviço de pizzaria de uma empresa, o nome do banco deverá ter o seguinte nome db_pizzaria_legal, onde o sistema trabalhará com as informações dos produtos desta
 empresa. 
O sistema trabalhará com 2 tabelas tb_pizza e tb_categoria.
siga  exatamente esse passo a passo:
Crie uma tabela de categorias utilizando a habilidade de abstração e determine 3 atributos relevantes do tb_categoria para se trabalhar com o serviço dessa pizzaria.
Crie uma tabela de tb_pizza e utilizando a habilidade de abstração e determine 5 atributos relevantes dos tb_produto para se trabalhar com o serviço dessa pizzaria(não esqueça de criar a foreign
 key de tb_categoria nesta tabela).
Popule esta tabela Categoria com até 5 dados.
Popule esta tabela pizza com até 8 dados.
Faça um select que retorne os Produtos com o valor maior do que 45 reais.
Faça um select trazendo  os Produtos com valor entre 29 e 60 reais.
Faça um select  utilizando LIKE buscando os Produtos com a letra C.
Faça um um select com Inner join entre  tabela categoria e pizza.
Faça um select onde traga todos os Produtos de uma categoria específica (exemplo todos os produtos que são pizza doce).
salve as querys para cada uma dos requisitos o exercício em um arquivo .SQL ou texto e coloque no seu GitHuB pessoal e compartilhe esta atividade.
*/
create database db_pizzaria_legal;
use db_pizzaria_legal;

create table tb_pizza(
id int(8) auto_increment,
nome varchar(50),
preco float,
qntfatia int,
tamanho varchar(2),
borda varchar(30),
primary key (id)
);

insert into tb_pizza (nome, preco, qntfatia, tamanho, borda) values ("cQ",54.32, 6,"GG","sim");
insert into tb_pizza (nome, preco, qntfatia, tamanho, borda) values ("cQW",14.32, 6,"GG","sim");
insert into tb_pizza (nome, preco, qntfatia, tamanho, borda) values ("cQWE",104.32, 6,"GG","sim");
insert into tb_pizza (nome, preco, qntfatia, tamanho, borda) values ("cQR",533.32, 6,"GG","sim");
insert into tb_pizza (nome, preco, qntfatia, tamanho, borda) values ("cQT",24.32, 6,"GG","sim");
insert into tb_pizza (nome, preco, qntfatia, tamanho, borda) values ("cQTT",54.32, 6,"GG","sim");
insert into tb_pizza (nome, preco, qntfatia, tamanho, borda) values ("cQYYY",34.32, 6,"GG","sim");
insert into tb_pizza (nome, preco, qntfatia, tamanho, borda) values ("cQYYTT",124.32, 6,"GG","sim");


create table tb_categoria(
id int(3) auto_increment,
sabor varchar(30),
preco float,
peso float,
foreign key (id) references tb_pizza (id)
);

-- 5


insert into tb_categoria(sabor, preco, peso) values ("calabresa", 45.30, 55.20);
insert into tb_categoria(sabor, preco, peso) values ("cocoli", 45.30, 55.20);
insert into tb_categoria(sabor, preco, peso) values ("didico", 15.30, 55.20);
insert into tb_categoria(sabor, preco, peso) values ("cocyy", 25.30, 35.20);
insert into tb_categoria(sabor, preco, peso) values ("didix", 35.30, 75.20);


select nome, preco from tb_pizza where preco>45;
select nome, preco from tb_pizza where preco between 29 and 60;

select tb_categoria.sabor from tb_categoria where sabor like "%c%";

select tb_pizza.nome, tb_categoria.sabor from tb_categoria
inner join tb_pizza on tb_pizza.id=tb_categoria.id
where tb_pizza.id=3;






-- problema
drop table tb_pizza;
drop table tb_categoria;

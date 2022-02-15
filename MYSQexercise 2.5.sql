/*
Atividade 5
Crie um banco de dados para um serviço de uma loja de produtos de construção, o nome do banco deverá ter o seguinte nome db_construindo_a_nossa_vida, onde o sistema
 trabalhará com as informações dos produtos desta empresa. 
O sistema trabalhará com 2 tabelas tb_produto e tb_categoria.
Siga  exatamente esse passo a passo:
Crie uma tabela de categorias utilizando a habilidade de abstração e determine 3 atributos relevantes do tb_categoria para se trabalhar com o serviço deste ecommerce.
Crie uma tabela de tb_produto e utilize a habilidade de abstração e determine 5 atributos relevantes dos tb_produto para se trabalhar com o serviço de uma loja de produtos
 (não esqueça de criar a foreign key de tb_categoria nesta tabela).
Popule esta tabela Categoria com até 5 dados.
Popule esta tabela Produto com até 8 dados.
Faça um select que retorne os Produtos com o valor maior do que 50 reais.
Faça um select trazendo  os Produtos com valor entre 3 e 60 reais.
Faça um select  utilizando LIKE buscando os Produtos com a letra C.
Faça um um select com Inner join entre  tabela categoria e produto.
Faça um select onde traga todos os Produtos de uma categoria específica (exemplo todos os produtos que são da categoria hidráulica).
Salve as querys para cada uma dos requisitos do exercício em um arquivo .SQL ou texto e coloque no seu GitHuB pessoal e compartilhe esta atividade.
*/
create database db_construindo_a_nossa_vida;
use db_construindo_a_nossa_vida;

create table tb_cat(
id int(5) auto_increment,
animal varchar (30),
vegetal varchar (30),
mineral varchar (30),
primary key (id) 
);

insert into tb_cat(animal, vegetal, mineral) values ("sim", "não", "não");
insert into tb_cat(animal, vegetal, mineral) values ("não", "sim", "não");
insert into tb_cat(animal, vegetal, mineral) values ("não", "não", "sim");
insert into tb_cat(animal, vegetal, mineral) values ("sim", "não", "não");
insert into tb_cat(animal, vegetal, mineral) values ("não", "sim", "não");

create table tb_prod(
id int(8) auto_increment,
nome varchar (40),
ano int,
peso float,
preco float,
cor varchar (40),
foreign key (id) references tb_cat(id)
);

insert into tb_prod(nome, ano, peso, preco, cor) values ("a", 2018, 123.00, 10.00, "preto");
insert into tb_prod(nome, ano, peso, preco, cor) values ("cc", 2018, 123.00, 1.00, "preto");
insert into tb_prod(nome, ano, peso, preco, cor) values ("a", 2018, 123.00, 70.00, "preto");
insert into tb_prod(nome, ano, peso, preco, cor) values ("acc", 2018, 123.00, 20.00, "preto");
insert into tb_prod(nome, ano, peso, preco, cor) values ("asCsc", 2018, 123.00, 40.00, "preto");


select nome, preco from tb_prod where preco > 50;
select nome, preco from tb_prod where preco between 3 and 60;

select nome, animal from tb_cat
inner join tb_prod on tb_prod.id=tb_cat.id;

-- se der ruim

drop table tb_prod, tb_cat;



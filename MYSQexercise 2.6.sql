/*
Atividade 6
Crie um banco de dados para um serviço de um site de cursos onlines, o nome do banco deverá ter o seguinte nome db_cursoDaMinhaVida, onde o sistema trabalhará com as informações dos produtos desta empresa. 
O sistema trabalhará com 2 tabelas tb_curso e tb_categoria.
siga  exatamente esse passo a passo:
Crie uma tabela de categorias utilizando a habilidade de abstração e determine 3 atributos relevantes do tb_categoria para se trabalhar com o serviço deste site de cursos onlines.
Crie uma tabela de tb_produto e utilizando a habilidade de abstração e determine 5 atributos relevantes dos tb_produto para se trabalhar com o serviço de um site de cursos onlines(não esqueça de criar a foreign key de tb_categoria nesta tabela).
Popule esta tabela Categoria com até 5 dados.
Popule esta tabela Produto com até 8 dados.
Faça um select que retorne os Produtos com o valor maior do que 50 reais.
Faça um select trazendo  os Produtos com valor entre 3 e 60 reais.
Faça um select  utilizando LIKE buscando os Produtos com a letra J.
Faça um um select com Inner join entre  tabela categoria e produto.
Faça um select onde traga todos os Produtos de uma categoria específica (exemplo todos os produtos que são da categoria Java).
Salve as querys para cada uma dos requisitos do exercício em um arquivo .SQL ou texto e coloque no seu GitHuB pessoal e compartilhe esta atividade.
*/
create database db_cursoDaMinhaVida;
use db_cursoDaMinhaVida;

create table tb_catt(
id int(5) auto_increment,
modo varchar(60),
tempo int null,
certificado varchar(3),
primary key (id) 
);

-- insert into () values ();

insert into tb_catt(modo, tempo, cartificado) values ("presencial", 8, "sim");
insert into tb_catt(modo, tempo, cartificado) values ("local", 8, "não");
insert into tb_catt(modo, tempo, cartificado) values ("híbrido", 60, "não");
insert into tb_catt(modo, tempo, cartificado) values ("local", 4, "sim");
insert into tb_catt(modo, tempo, cartificado) values ("local", 10, "não");

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
insert into tb_prod(nome, ano, peso, preco, cor) values ("cjc", 2018, 123.00, 1.00, "preto");
insert into tb_prod(nome, ano, peso, preco, cor) values ("aj", 2018, 123.00, 70.00, "preto");
insert into tb_prod(nome, ano, peso, preco, cor) values ("acc", 2018, 123.00, 20.00, "preto");
insert into tb_prod(nome, ano, peso, preco, cor) values ("asCjsc", 2018, 123.00, 40.00, "preto");
insert into tb_prod(nome, ano, peso, preco, cor) values ("cc", 2018, 123.00, 1.00, "preto");
insert into tb_prod(nome, ano, peso, preco, cor) values ("a", 2018, 123.00, 70.00, "preto");
insert into tb_prod(nome, ano, peso, preco, cor) values ("acc", 2018, 123.00, 20.00, "preto");

select tb_prod.nome, tb_prod.preco, tb_cat.animal from tb_cat
inner join tb_prod on tb_prod.id=tb_cat.id
where nome like "%J%";

select tb_prod.nome from tb_cat
inner join tb_prod on tb_prod.id=tb_cat.id


-- se der ruim

drop table tb_prod, tb_cat;
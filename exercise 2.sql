/*
Atividade 1
Crie um banco de dados para um serviço de um game Online , o nome do banco deverá ter o seguinte nome db_generation_game_online, onde, o sistema trabalhará com as informações dos personagens
 desse game. x
O sistema trabalhará com 2 tabelas tb_personagem e tb_classe.x
siga  exatamente esse passo a passo:
Crie uma tabela tb_classe utilizando a habilidade de abstração e determine 3 atributos relevantes da classe para se trabalhar com o serviço desse  game Online.x
Crie uma tabela tb_personagem  e utilizando a habilidade de abstração e determine 5 atributos relevantes dos funcionários para se trabalhar com o serviço desse 
 game Online (não esqueça de criar a foreign key de tb_classe nesta tabela).x
Popule esta tabela classe com até 5 dados.x
Popule esta tabela personagem com até 8 dados. x
Faça um select que retorne os personagens com o poder de ataque maior do que 2000.x
Faça um select trazendo  os personagens com poder de defesa entre 1000 e 2000.x
Faça um select  utilizando LIKE buscando os personagens com a letra C.x
Faça um um select com Inner join entre  tabela classe e personagem.
Faça um select onde traga todos os personagem de uma classe específica (exemplo todos os personagens que são arqueiros).
salve as querys para cada uma dos requisitos do exercício em um arquivo .SQL ou texto e coloque no seu GitHuB pessoal e compartilhe esta atividade.
*/
create database db_generation_game_online;
use db_generation_game_online;

create table tb_classe(
id int(5) auto_increment,
str int,
inte int,
agi int,
primary key (id)
);

INSERT INTO tb_classe(str, inte, agi) values (1342,3000,5400);
INSERT INTO tb_classe(str, inte, agi) values (342,3000,3300);
INSERT INTO tb_classe(str, inte, agi) values (1342,3000,6000);
INSERT INTO tb_classe(str, inte, agi) values (4342,3000,5400);
INSERT INTO tb_classe(str, inte, agi) values (342,300,9000);



create table tb_char(
id int(8) auto_increment,
nome varchar(255),
atqpower int,
defpower int,
speed int,
sex varchar (10),
class varchar (30),
lvl int,
raca varchar(50),
primary key (id)
);

/* INSERT INTO tb_char(nome, atqpower, defpower, speed, sex, class,lvl, raca) values ("",,,,"","",,""); */

INSERT INTO tb_char(nome, atqpower, defpower, speed, sex, class,lvl, raca) values ("Q",3255,2335,400,"masculino","arqueiro",89,"elfo");
INSERT INTO tb_char(nome, atqpower, defpower, speed, sex, class,lvl, raca) values ("W",2255,1335,400,"masculino","cavaleiro",32,"humano");
INSERT INTO tb_char(nome, atqpower, defpower, speed, sex, class,lvl, raca) values ("E",3235,23325,400,"masculino","coveiro",93,"troll");
INSERT INTO tb_char(nome, atqpower, defpower, speed, sex, class,lvl, raca) values ("R",6255,2335,400,"masculino","uber",50,"draconico");
INSERT INTO tb_char(nome, atqpower, defpower, speed, sex, class,lvl, raca) values ("T",5255,2335,400,"masculino","pleb",98,"dragiii");
INSERT INTO tb_char(nome, atqpower, defpower, speed, sex, class,lvl, raca) values ("Y",255,1335,400,"masculino","caçado",100,"iiiidrag");
INSERT INTO tb_char(nome, atqpower, defpower, speed, sex, class,lvl, raca) values ("U",4255,2335,400,"masculino","npc",18,"elfo");
INSERT INTO tb_char(nome, atqpower, defpower, speed, sex, class,lvl, raca) values ("I",3455,2335,400,"masculino","arqueiro",48,"elfo");

select nome, atqpower from tb_char where atqpower>2000;
select nome, defpower from tb_char where defpower between 1000 and 2000;
select * from tb_char where class like "%c%";

select tb_char.nome ,tb_char.class from tb_char
inner join tb_classe on tb_classe.id=tb_char.id
where class="arqueiro";



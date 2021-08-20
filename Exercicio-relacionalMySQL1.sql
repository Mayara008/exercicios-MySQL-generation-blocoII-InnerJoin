use db_generation_game_online;

create table tb_classe(
id bigint auto_increment,
tipo varchar (255) not null,
nivel varchar (255) not null,
fase bigint not null,
primary key (id)
);

insert into tb_classe (tipo, nivel, fase) values ("Mago", "Básico", 1);
insert into tb_classe (tipo, nivel, fase) values ("Feiticeiro", "Intermediário", 2);
insert into tb_classe (tipo, nivel, fase) values ("Mago", "Avançado", 3);
insert into tb_classe (tipo, nivel, fase) values ("Mago", "Básico", 1);
insert into tb_classe (tipo, nivel, fase) values ("Feiticeiro", "Intermediário", 2);

select * from  tb_classe ;

create table tb_personagem(
id bigint auto_increment,
nome varchar(255) not null,
tamanho varchar(255) not null,
ataque int not null,
defesa int not null,
energia int not null,
classe_id bigint,
primary key (id),
FOREIGN KEY (classe_id ) REFERENCES tb_classe (id)
); 

insert into tb_personagem (nome, tamanho, ataque, defesa, energia, classe_id) values ("Adom", "Pequeno", 1000, 5000, 70000, 1);
insert into tb_personagem (nome, tamanho, ataque, defesa, energia, classe_id) values ("Elliot", "Médio", 300, 300, 6000, 2);
insert into tb_personagem (nome, tamanho, ataque, defesa, energia, classe_id) values ("Iseut", "Grande", 5000, 7000, 2000, 5);
insert into tb_personagem (nome, tamanho, ataque, defesa, energia, classe_id) values ("Mario", "Pequeno", 8000, 9000, 9900, 4);
insert into tb_personagem (nome, tamanho, ataque, defesa, energia, classe_id) values ("Cadir", "Médio", 2000, 1000, 4000, 3);
insert into tb_personagem (nome, tamanho, ataque, defesa, energia, classe_id) values ("Vilkas", "Grande", 500, 900, 5000, 5);
insert into tb_personagem (nome, tamanho, ataque, defesa, energia, classe_id) values ("Wong", "Pequeno", 1000, 1900, 3000, 2);
insert into tb_personagem (nome, tamanho, ataque, defesa, energia, classe_id) values ("Zola", "Médio", 2000, 1200, 1000, 1);

select * from tb_personagem;

select * from tb_personagem where ataque > 2000;
select * from tb_personagem where defesa between 1000 and 2000;
select * from tb_personagem where nome like "%C%";

select tb_personagem.nome, tb_personagem.tamanho, tb_personagem.ataque, tb_personagem.defesa, tb_personagem.energia, tb_classe.tipo, tb_classe.nivel, tb_classe.fase   
from tb_personagem inner join tb_classe  
on tb_classe.id = tb_personagem.classe_id; 

select * from tb_personagem inner join
tb_classe on tb_classe.id = tb_personagem.classe_id where tipo like "%Mago%";






use db_pizzaria_legal;

create table tb_categoria(
id bigint auto_increment,
sabores varchar (255) not null,
tamanho  varchar (255) not null,
preco decimal(5,2) not null, -- ARRUMAR A QUESTÂO DA VIRGULA
primary key (id)
);

insert into tb_categoria (sabores, tamanho, preco) values ("Calabresa", "Pequena", 29.50 );
insert into tb_categoria (sabores, tamanho, preco) values ("4 Queijos ", "Média", 100.00);
insert into tb_categoria (sabores, tamanho, preco) values ("Brigadeiro", "Grande", 25.00);
insert into tb_categoria (sabores, tamanho, preco) values ("Marguerita", "Pequena", 60.00);
insert into tb_categoria (sabores, tamanho, preco) values ("Romeu e julieta", "Média", 56.00);

select * from  tb_categoria;

create table tb_pizza(
id bigint auto_increment,
atendimento varchar (255) not null, -- Ifood, telefone fixo, WhatsApp, local 
entrega varchar (255) not null, -- A domicilio ou Retirar no local, comer no local 
tipo varchar (255) not null, -- doce ou salgada
ingrediente varchar (255) not null, -- Quais os ingredientes da pizza escolhida
pagamento varchar (255) not null, -- forma de pagamento: dinheiro, Cartão:crédito/débito, pix, QRcode. 
categoria_id bigint,
primary key (id),
foreign key (categoria_id) references tb_categoria (id) 
);

insert into tb_pizza (atendimento, entrega, tipo, ingrediente, pagamento, categoria_id) values ("Telefone Fixo", "A domicilio", "Doce", "Queijo e Goiabada", "Dinheiro", 5);
insert into tb_pizza (atendimento, entrega, tipo, ingrediente, pagamento, categoria_id) values ("WhatsApp", "Retirar no local", "Doce", "Chocolate e granulado", "Dinheiro", 3);
insert into tb_pizza (atendimento, entrega, tipo, ingrediente, pagamento, categoria_id) values ("Local", "comer no local", "Doce", "Queijo e Goiabada", " Pix", 5);
insert into tb_pizza (atendimento, entrega, tipo, ingrediente, pagamento, categoria_id) values ("Ifood", "A domicilio", "Doce", "Chocolate e granulado", "Cartão", 3);
insert into tb_pizza (atendimento, entrega, tipo, ingrediente, pagamento, categoria_id) values ("Telefone Fixo", "A domicilio", "Salgada", "Calabresa fatiada", "Cartão", 1);
insert into tb_pizza (atendimento, entrega, tipo, ingrediente, pagamento, categoria_id) values ("WhatsApp", "Retirar no local", "Salgada", "Queijos: Mussarela, Gosgonsola, Bufalo e Branco", "Cartão", 2);
insert into tb_pizza (atendimento, entrega, tipo, ingrediente, pagamento, categoria_id) values ("Local", "comer no local", "Salgada", "Tomate e Majericão", "QRcode",4);
insert into tb_pizza (atendimento, entrega, tipo, ingrediente, pagamento, categoria_id) values ("Ifood", "A domicilio", "Salgada", "Calabresa fatiada", "Cartão", 1);


select * from tb_pizza; -- tras todos os dados da tabels 

select * from tb_categoria where preco > 45.00;   -- c - trazer só os dados da tabela de 45

select * from tb_categoria where preco between 29.00 and 60.00; -- d 

select * from tb_categoria where sabores like "%C%";  -- e

select tb_pizza.atendimento, tb_pizza.entrega, tb_pizza.tipo, tb_pizza.ingrediente, tb_pizza.pagamento, tb_pizza.categoria_id, tb_categoria.sabores, tb_categoria.tamanho, tb_categoria.preco
from  tb_pizza inner join tb_categoria
on tb_categoria.id = tb_pizza.categoria_id; 

select * from tb_pizza inner join

tb_categoria on tb_categoria.id = tb_pizza.categoria_id where tipo like "%doce%";



create database cidadeEncantada;
use cidadeEncantada;


create table vestes(
idvestes int primary key auto_increment,
estilo varchar(45),
cor varchar (45)
);
insert into vestes values
(default,"anos 90", "Manteiga"),
(default,"roqueiro", "Âmbar-bastardo"),
(default,"Glam", "Naval"),
(default,"Retro", "Abóbora"),
(default,"Vintage", "Milho"),
(default,"Casual Chique", "Verde Paris"),
(default,"Boho", "Azul furtivo"),
(default,"Esportivo ", "Verde Grama"),
(default,"Boho ", "Jade"),
(default,"Moderno", "Prateado"),
(default,"Romântico", "Púrpura"),
(default,"Gótico", "Tijolo Refratário"),
(default,"Hipster", "Hortelã"),
(default,"Sensual", "Azul céu profundo"),
(default,"Alternativo", "Coral"),
(default,"Grunge", "Rosa Profundo"),
(default,"Dramático  urbano", "Rosa Brilhante"),
(default,"tradicional", "Obsessão da Rainha"),
(default,"Casual", "Caricia"),
(default,"Dólmãs ", "Tufão"),
(default,"Contemporâneo", "Allure"),
(default,"Minimalista", "Hera"),
(default,"Athleisure", "Leme"),
(default,"Natural  Chic", "Vinho"),
(default,"Oversized", "Nude"),
(default,"Swag", "Rosa Floral");

create table cidade(
idCidade int primary key auto_increment,
nome varchar(45),
pais varchar(45),
qtdHabitantes int
);

insert into cidade values
(default, "Celestiastra", "Miragea", 19000),
(default, "Veridian Peaks", "Verdantia", 30000),
(default, "Sylvanvale", "Crystalis", 21000),
(default, "Arcanopolis", "Etherea", 14000),
(default, "Dreamgate", "Zephyrion", 5000),
(default, "Ironspire", "Mythoria", 10000);


create table ajudante(
idAjudante int primary key auto_increment,
especie varchar (45),
especialidade varchar(45),
fkVestes int,
foreign key (fkVestes) references vestes(idVestes)
);
insert into ajudante values
(default, "Faerinos ","Confeiteiro","1"),
(default, "Pluminis ","Culinária Celestiastra","11"),
(default, "Quimeroides ","Gastronomia Dreamgate","15"),
(default, "Ursos do Trovão ","Padeiro","26"),
(default, "Cristauros ","Cozinha Ironspire","4");

create table cozinheiro(
idCozinheiro int primary key auto_increment,
nome varchar(45),
dtNasc date,
especialidade varchar(45),
fkAjudante int,
fkVestes int,
fkCidade int,
foreign key (fkAjudante) references ajudante(idAjudante),
foreign key (fkVestes) references vestes(idVestes),
foreign key (fkCidade) references cidade(idCidade)
);

insert into cozinheiro values
(default, "Alaric Chefemágico", "1000-01-03","Cozinha Ironspire",5,"24","6"),
(default, "Galadriel Luarluminoso", "3999-01-5","Padeiro",4,"19","2"),
(default, "Aeliana Saborcintilante", "1341-04-09","Gastronomia Dreamgate",3,"12","5"),
(default, "Eldric Culináriamística", "1613-04-15","Culinária Celestiastra",2,"9","1"),
(default, "Thalassa Fogosagrado", "1531-03-04","Confeiteiro", 1 ,"23","4");


select cozinheiro.nome as cozinheiro, especie as ajudante, cozinheiro.especialidade, estilo, cor, cidade.nome, pais from cozinheiro join ajudante on cozinheiro.fkAjudante = ajudante.idAjudante
join vestes on cozinheiro.fkVestes = vestes.idVestes
join cidade on cozinheiro.fkCidade = cidade.idCidade;

create table ingredientes(
idIngredientes int primary key auto_increment,
nome varchar(45),
tipo varchar(45),
validade date
);

insert into ingredientes values
(default, "Néctar de Brilho Celestial", "Fruta", "4500-01-05"),
(default, "Folhas de Éden", "Vegetal", "4500-02-15"),
(default, "Sal do Mar dos Sonhos", "Tempero", "4500-06-22"),
(default, "Pó de Lua Crescente", "Tempero", "4500-04-13"),
(default, "Raiz de Éter", "Vegetal", "4500-01-18"),
(default, "Semente de Estrela Cadente", "Vegetal", "4500-05-19"),
(default, "Carne de Fênix", "Proteína", "4500-10-22"),
(default, "Pele de Fera Encantada", "Proteína", "4500-12-25"),
(default, "Chifres de Centauro", "Proteína", "4500-11-15"),
(default, "Carne de Eletrofulgus ", "Proteína", "4500-09-23"),
(default, "Carne de Sibilantes", "Proteína", "4500-08-22"),
(default, "Estrelitella", "Carboidratos", "4500-02-21"),
(default, "Batata Mística", "Carboidratos", "4500-05-10"),
(default, "Estrela de Trigo", "Carboidratos", "4500-04-20"),
(default, "Tortilhas do Deserto de Cristal", "Carboidratos", "4500-03-23");

create table setor(
idSetor int primary key auto_increment,
nome varchar(45),
descricao varchar(255));

insert into setor values
(default,'Garde Manger','Preparação dos pratos frios, como salada, pratos crus, entre outros'),
(default,'Fogão','Responsável por todos os pratos quentes que envolver algum preparo no fogão'),
(default,'Fritadeira','Preparo das frituras, tanto acompanhamentos como entradas '),
(default,'Confeitaria','Sobremesas em geral que saem da cozinha, passam pela mão do confeiteiro'),
(default,'Parrilla','Responsável pela saída de proteínas de todo o restaurante'),
(default,'Produção','Cuida de todo o preparo anterior da cozinha, possui uma carga de preparo mais longa'),
(default,'Boqueta','Responsável pela saída dos pratos, onde finaliza e monta a louça para o cliente');

create table pratos(
idPrato int,
pkCozinheiro int,
pkSetor int,
nome varchar(45),
tempoPreparo time,
fase varchar(45),
descricao varchar(500),
foreign key (pkCozinheiro) references cozinheiro(idCozinheiro),
foreign key (pkSetor) references setor(idSetor),
primary key (pkSetor,pkCozinheiro,idPrato)
);

insert into pratos  values
(1, 1, 2,"Sopa de Cristal", "01:00:00", "No ponto", "Uma sopa reconfortante feita com ingredientes mágicos como Semente de Estrela, 
Néctar de Brilho Celestial Cadente, Pó de Lua Crescente e Pele de Fera Encantada. 
Esta mistura única promove sonhos vívidos e tranquilos, levando os comensais a uma jornada onírica de encanto e magia."),
(2, 2, 2,"Pão Celestial", "01:00:00", "No ponto", "Um pão macio e aerado, confeccionado com a rara farinha de Estrela de Trigo,
 que cresce apenas nas alturas etéreas das nuvens. Sua textura delicada e sabor celestial são aprimorados com uma pitada de 
 Sal do Mar dos Sonhos, evocando uma sensação de paz e serenidade a cada mordida"),
(3, 3, 3,"Bolinhos de Arco-Íris", "00:45:00", "Quentinhos", "Bolinhos de cores vibrantes e textura macia, recheados com a lendária Batata Mágica, 
conhecida por trazer sorte e alegria a quem os saboreia. Seu recheio de carne sibilante acrescenta um toque de mistério e aventura a
 cada pedaço, tornando-os uma verdadeira indulgência mágica. "),
(4, 4, 2,"Tortilha do Éter", "00:30:00", "No ponto", "Uma combinação intrigante de sabores e aromas, onde a carne de Eletrofulgus, refogada 
com raiz de Éter, é cuidadosamente envolta em tortilhas do Deserto de Cristal. Esta fusão única de ingredientes exóticos 
cria uma experiência gastronômica incomparável, transportando os comensais para além das fronteiras da realidade.."),
(5, 5, 2,"Estrela Flamejante", "01:00:00", "Cozido", "Asas de Fênix, mergulhadas em Estrelitella e grelhadas até a perfeição, são servidas
 com uma refrescante salada de tortilhas do Deserto de Cristal. Cada mordida é uma explosão de sabores mágicos, onde a energia 
 e a vitalidade da Fênix se fundem com a suavidade das tortilhas, criando uma experiência culinária verdadeiramente celestial"),
(6, 5, 2,"Frutas da Eteridade", "01:30:00","Cozido", "Chifres de Centauro, cuidadosamente cozidos em um caldo aromático de Folha de Éden,
 são servidos sobre uma cama crocante de Batata Mágica. Esta combinação celestial  de sabores terrosos e reconfortantes é uma
 homenagem à magia da natureza, oferecendo uma experiência gastronômica única e inesquecível");
 
create index idx_Pratos on pratos(idPrato);

create table preparo(
idPreparo int, 
pkPrato int,
pkIngrediente int,
foreign key(pkIngrediente) references ingredientes(idIngredientes),
foreign key (pkPrato) references pratos(idPrato),
primary key (pkIngrediente,pkPrato,idPreparo)
);

insert into preparo values
(1,1, 6),
(2,2, 14),
(3,3, 13),
(4,4, 15),
(5,5, 7),
(6,6, 9);

create table criaturas(
idCriaturas int,
nome varchar(45),
especie varchar(45),
descricao varchar(500),
pkCozinheiro int,
fkSetor int,
foreign key (fkSetor) references setor(idSetor),
foreign key (pkCozinheiro) references cozinheiro(idCozinheiro),
primary key(idCriaturas, pkCozinheiro)
);

insert into criaturas values
(1, "Nebuluna", "Eletrofulgus", "Peixes que geram eletricidade e iluminam as profundezas do oceano",1,2),
(2, "Cintilus", "Fera Encantada", " Uma criatura mística envolta em um brilho etéreo, emanando uma aura de mistério e poder",2,1),
(3, "Fulguris", "Fênix", "Uma majestosa ave de fogo, cujas penas cintilam com as chamas da renovação e da imortalidade",3,3),
(4, "Seraphim", "Centauro", "Uma figura meio-homem, meio-cavalo, dotada de força e sabedoria, e conhecida por sua destreza nas artes da guerra e da cura",4,4),
(5, "Gládrea", "Sibilantes ", "Serpentes aladas que podem controlar as correntes de ar e prever o clima.",5,5),
(6, "Faeleste", "Faerinos ", " Seres pequenos e delicados, feitos de luz e energia mágica",1,6),
(7, "Ventúria", "Pluminis ", "Pássaros com asas iridescentes que podem atravessar dimensões alternativas",2,2),
(8, "Sombranil", "Quimeroides ", " Criaturas parecidas com quimeras, compostas por partes de diferentes animais e dotadas de habilidades mágicas",3,1),
(9, "Estrelúcia", "Ursos do Trovão", "Ursos gigantes que são capazes de invocar tempestades com seus rugidos",4,3),
(10, "Lumicanto", "Cristauros", "- Cavalos com crinas que brilham com a luz da lua e podem correr na superfície da água.",5,4),
(11, "Mystara", "Amanhecedores ", "Lobos que têm a capacidade de controlar o ciclo do dia e da noite",1,2),
(12, "Solarius", "Esquilos Faísca", " Esquilos ágeis que carregam faíscas mágicas em suas caudas.",2,1),
(13, "Arcanum", "Tartarugas Astrais", " Tartarugas que carregam o universo em suas costas e são guardiãs dos segredos cósmicos.",3,2),
(14, "Sombralex", "Ratos das Estrelas", " Roedores que possuem olhos que refletem as constelações do céu noturno.",4,3),
(15, "Lunaris", "Luminosos", "Borboletas que emitem uma luz suave e são capazes de curar com seu pó mágico.",5,4);

select cozinheiro.nome as cozinheiro, especie as ajudante, cozinheiro.especialidade, estilo, cor, cidade.nome, pais from cozinheiro join ajudante on cozinheiro.fkAjudante = ajudante.idAjudante
join vestes on cozinheiro.fkVestes = vestes.idVestes
join cidade on cozinheiro.fkCidade = cidade.idCidade;
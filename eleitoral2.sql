create database eleicao;

use eleicao;

create table partido(
id_partido integer primary key auto_increment,
nome_partido varchar(100),
sigla_partido varchar(10)
);

create table candidato(
id_candidato Integer primary key auto_increment,
nome_candidato varchar(100),
id_partido int,
cargo varchar(100),
foreign key (id_partido) references partido(id_partido)
);

create table localidade (
id_localidade integer primary key auto_increment,
nome_localidade varchar(100)
);


create table zona_eleitoral(
id_zona_eleitoral integer primary key auto_increment,
numero_zona integer,
id_localidade integer,
foreign key (id_localidade) references localidade(id_localidade)
);

create table secao_eleitoral(
id_secao_eleitoral integer primary key auto_increment,
numero_secao integer,
id_zona integer,
foreign key (id_zona) references zona_eleitoral(id_zona_eleitoral)
);

create table eleitor(
id_eleitor integer primary key auto_increment,
nome_eleitor varchar(100),
cpf_eleitor varchar(15),
numero_titulo varchar(20),
id_secao_eleitoral integer,
foreign key (id_secao_eleitoral) references secao_eleitoral(id_secao_eleitoral)
);

CREATE TABLE votos (
id_voto integer primary key auto_increment,
id_eleitor integer,
id_candidato integer,
foreign key (id_eleitor) references eleitor(id_eleitor),
foreign key (id_candidato) references candidato(id_candidato)
);






create database SP_Pinturas;

use SP_Pinturas;


create table Cliente (
	id integer primary key auto_increment,
	nome_do_predio varchar(50) not null,
	endereco varchar(250) not null,
    responsavel varchar(60) not null,
    email varchar(60) null,
	telefone char(10) null,
    celular_1 char(11) null,
    celular_2 char(11) null
);


create table Pedidos(
	id integer primary key auto_increment,
	situacao char(8) default 'pendente' check ('atendido' or 'pendente'),
    id_cliente integer not null,
    tipo_do_servico text not null,
    numero_andares integer check (numero_andares >= 10),
	constraint fk_cliente foreign key(id_cliente) references Cliente(id)
);


create table Orcamentos(
	id integer primary key auto_increment,
	situacao varchar(19) default 'aguardando resposta' check ('aprovado' or 'reprovado' or 'aguardando resposta' or null),
	enviado bool,
    redigido bool,
	id_pedido integer not null,/*deverá conter um check de somente se o pedido estiver como atendido */
    constraint fk_pedido foreign key (id_pedido) references Pedidos (id)
);

create table Servicos(
	id integer primary key auto_increment,
    situacao varchar(12) default 'em andamento' check ('concluído' or 'em andamento'),
    observacoes text,
    cliente integer not null,
    orcamento integer not null, /*deverá conter um check de somente se o orcamento estiver como aprovado */
    constraint fk_cliente_do_servico foreign key (cliente) references Cliente (id),
    constraint fk_orcamento_do_servico foreign key (orcamento) references Orcamentos (id)
);


create table Reunioes(
	codigo_evento integer primary key auto_increment,
    data_evento datetime not null,
    servico integer, /* sobre qual servico será feita a reuniao */
    local_evento text not null,
    observacoes text,
    situacao varchar(9) default 'marcada' check('marcada' or 'realizada')
); 


create table Funcionarios(
	nome varchar(100),
	data_admissao date check(data_admissao < now()), /* now() retorna data e hora atuais */
    ativo bool,
	cpf char(11) not null,
	rg char(9) not null,
	foto mediumblob,
    CTPS_SERIE varchar(15) not null, /*CTPS 8 DIGITOS + SERIE 5 DIGITOS + UF (DEPENDE DO LOCAL ONDE FOI TIRADA) */
    PIS char(11),
    cargo varchar(60)
);


create table Fornecedores(
	id integer primary key auto_increment,
	nome_fornecedor varchar(100),
    telefone_1 char(10),
    telefone_2 char(10),
	telefone_3 char(10),
    celular_1 char(11),
    celular_2 char(11),
    celular_3 char(11),
    email varchar(60),
    endereco varchar(250)
);


create table Tipos_Materiais(
	id integer primary key auto_increment,
    descricao varchar(30) not null,
    fornecedor integer,
    constraint fk_fornecedor foreign key (fornecedor) references Fornecedores (id)
);









	

















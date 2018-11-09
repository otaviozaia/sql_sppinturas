use SP_Pinturas;


insert into Cliente(nome_do_predio, endereco, responsavel, email, telefone)
values('Edifício Primavera','Rua das Monsões, 547','Joao Antonio','edificioprimavera@condominio.com.br','1144332122'),
	  ('Condomínio Irineu Evangelista','Ademir Souza','Avenida da Saudade, 1009','condoirineu@gmail.com','1156789090'),
      ('Torre das Nações Unidas','Roberto de Freitas','Avenida Brigadeiro, 2307','edificiotorre@gmail.com','1943267898'),
      ('Edifício das Bandeiras','Márcia Regina','Avenida das Bandeiras, 502','edfbandeiras@edf.com','1345347007');
      
insert into Pedidos(situacao, id_cliente, tipo_do_servico, numero_andares)
values ('pendente',2,'Pintura Externa',12),
	   ('atendido',1,'Pintura Interna',22),
       ('atendido',3,'Pintura Externa',30),
       ('pendente',4,'Pintura Externa',10);
       
insert into Orcamentos(situacao, enviado, redigido, id_pedido)
values ('Aprovado',1,1,2),
       ('Aprovado',1,1,3);
       
insert into Servicos(observacoes, cliente, orcamento)
values ('deverá ser feito em 7 dias',1,1),
	   ('pintar somente lado b',3,2);


insert into Reunioes(data_evento, servico, local_evento, observacoes)
values ('2018/10/10',2,'Avenida Machado de Assis, 204','enfatizar a pintura para o lado A também.');


insert into Fornecedores(nome_fornecedor, telefone_1, email, endereco)
values ('Tintas Coral','1347273400','tintascoral@coral.com.br','Avenida Barão, 1027, São Paulo-SP'),
	   ('Tintas Suvinil','1167908990','suvinil@tintas.com.br','Rua 14 Bis, 456, São Paulo-SP');
       
  
insert into Tipos_Materiais(descricao,fornecedor)
values ('Tintas',1),
	   ('Acessórios em Geral',2),
       ('EPI',2);

       

















use SP_Pinturas;

/*-----------------------PROCEDURES DE BUSCA: -----------------------*/
delimiter $$
create procedure busca_cliente_por_nome (nome_predio varchar(50))
begin

select * from Cliente where nome_do_predio = nome_predio;

end$$
delimiter;



delimiter $$
create procedure busca_cliente_id (id_cliente integer)
begin

select * from Cliente where id = id_cliente;


end$$
delimiter;

delimiter $$
create procedure busca_pedido_cliente (nome_cliente varchar(50))
begin

select P.*,C.nome_do_predio from Pedidos as P
inner join Cliente as C on P.id_cliente = C.id
where C.nome_do_predio = nome_cliente;

end$$
delimiter;



delimiter $$
create procedure busca_orcamentos_cliente (in nome_predio varchar(50))
begin

select O.*,C.nome_do_predio from Orcamentos as O 
inner join Pedidos as P on O.id_pedido = P.id
inner join Cliente as C on P.id_cliente = C.id
where C.nome_do_predio = nome_predio;

end$$
delimiter;


delimiter$$
create procedure busca_servicos_cliente (nome_cliente varchar(50))
begin


select S.*,C.nome_do_predio from Servicos as S
inner join Cliente as C on S.cliente = C.id
where C.nome_do_predio = nome_cliente;


end$$
delimiter;



delimiter$$
create procedure busca_reuniao_intervalo_data (data_1 date, data_2 date)
begin


select * from Reunioes 
where data_evento between data_1 and data_2;


end$$
delimiter;


delimiter$$
create procedure busca_reuniao_cliente (nome_cliente varchar(50))
begin

select R.*,C.nome_do_predio from Reunioes as R
inner join Servicos as S on R.servico = S.id
inner join Cliente as C on S.cliente = C.id
where C.nome_do_predio = nome_cliente; 




end$$
delimiter;



































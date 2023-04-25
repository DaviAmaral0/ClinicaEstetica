use ClinicaEstetica

-- TipoUsuario
SELECT * FROM TipoUsuario

INSERT TipoUsuario (Nome) VALUES ('Administrador')
INSERT TipoUsuario (Nome) VALUES ('Operador')

-- Usuario
SELECT * FROM Usuario

INSERT Usuario (nome, email, senha,idtipoUsuario, status)
VALUES ('fernanda da Silva','Fulano@uol.com.br' ,'123123' , 1, 1 )

INSERT Usuario (nome, email, senha,idtipoUsuario, status)
VALUES ('Maria Helena','maria@hotmail.com','123456' , 2, 1 )

INSERT Usuario (nome, email, senha,idtipoUsuario, status)
VALUES ('Claudete Ferreira','claudete@hotmail.com','123789' , 2, 1 )

 
 -- StatusAgendamento

 SELECT * FROM StatusAgendamento

INSERT StatusAgendamento (Nome)
VALUES ('Agendado')

INSERT StatusAgendamento (Nome)
VALUES ('Confirmado')

INSERT StatusAgendamento (Nome)
VALUES ('Efetuado')

INSERT StatusAgendamento (Nome)
VALUES ('Cancelado')

-- TipoServico

SELECT * FROM TipoServico

INSERT TipoServico (Nome)
VALUES ('Cabelo')

INSERT TipoServico (Nome)
VALUES ('Barbearia')

INSERT TipoServico (Nome)
VALUES ('Depilação')

INSERT TipoServico (Nome)
VALUES ('Esmalteria')

INSERT TipoServico (Nome)
VALUES ('Sobracelha')

INSERT TipoServico (Nome)
VALUES ('Maquiagem')

INSERT TipoServico (Nome)
VALUES ('Massoterapia')

INSERT TipoServico (Nome)
VALUES ('Podologia')

select * from Servico

insert into Servico (nome, Descricao, valor, idTipoServico, Status)
values ('Escova', 'Escova no cabelo', 90, 1, 1)

insert into Servico (nome, Descricao, valor, idTipoServico, Status)
values ('Corte Feminino', 'Corte de cabelo feminino', 50.30, 1, 1)

insert into Servico (nome, Descricao, valor, idTipoServico, Status)
values ('Barba', 'Barba com toalha quente', 25, 2, 1)

insert into Servico (nome, Descricao, valor, idTipoServico, Status)
values ('Meia Perna', 'Depilação da metade da perna', 50, 3, 1)

insert into Servico (nome, Descricao, valor, idTipoServico, Status)
values ('Francesinha', 'Pintura de unhas francesinha', 20, 4, 1)

insert into Servico (nome, Descricao, valor, idTipoServico, Status)
values ('Sobrancelha com cera', 'Depilação da sobrancelha com cera', 20.90,5, 1)

insert into Servico (nome, Descricao, valor, idTipoServico, Status)
values ('Sobrancelha com linha', 'Depilação da sobrancelha com linha', 25.90, 5, 1)

insert into Servico (nome, Descricao, valor, idTipoServico, Status)
values ('Tratamento de pés', 'Tratamento geral e relaxante dos pés', 49.90, 8, 1)


select * from Cliente

insert into Cliente(nome, cpf, email, telefone, logradouro, Nro, Complemento, bairro, cidade, estado, cep, status)
values('rebecca', 25869854585,'rebecca@gmail.com', 11656585486, 'rua da feira', 78, 'bloco A', 'São josé', 'São paulo', 'Sp', '08126-987',1)


insert into Cliente(nome, cpf, email, telefone, logradouro, Nro, Complemento, bairro, cidade, estado, cep, status)
values('duda', 25869854555,'duda@gmail.com', 11896585486, 'rua da roda', 529, 'bloco B', 'São miguel', 'São paulo', 'Sp', '08126-989',1)


insert into Cliente(nome, cpf, email, telefone, logradouro, Nro, Complemento, bairro, cidade, estado, cep, status)
values('ana', 25589854585,'ana@gmail.com', 11656695486, 'rua da agua', 69 , 'bloco C', 'São pedro', 'São paulo', 'Sp', '08159-987',1)


insert into Cliente(nome, cpf, email, telefone, logradouro, Nro, Complemento, bairro, cidade, estado, cep, status)
values('paula', 25479854585,'paula@gmail.com', 11656475486, 'rua da arvore', 49, 'bloco D', 'São joão', 'São paulo', 'Sp', '08147-987',1)


insert into Cliente(nome, cpf, email, telefone, logradouro, Nro, Complemento, bairro, cidade, estado, cep, status)
values('gabriela', 25479854585,'gabriela@gmail.com', 11406585486, 'rua da moda', 12, 'bloco E', 'São longuinho', 'São paulo', 'Sp', '08169-987',1)

-- Agendamento

SELECT * FROM Agendamento
-- Inserir 1 agendamento com status Agendado com 1 serviço

INSERT INTO Agendamento (idCliente, id_status_Agendamento, vl_total, vl_desconto, dt_agendamento, ds_motivo_cancelamento, dt_cadastro, id_usuario_cadastro, dt_alteracao, id_usuario_alteracao)
values (1, 1, 85, 15, '2023/05/15 13:59', '' ,'2023/03/15', 1 ,'2023/06/15', 1)


-- Inserir 1 agendamento com status Cancelado com 3 serviços

INSERT INTO Agendamento (idCliente, id_status_Agendamento, vl_total, vl_desconto, dt_agendamento, ds_motivo_cancelamento, dt_cadastro, id_usuario_cadastro, dt_alteracao, id_usuario_alteracao)
values (1, 4, 50.30, 25, '2023/04/25 17:55', 'compromisso em cima da hora' ,'2023/02/17', 1 ,'2023/04/25', 1)

INSERT INTO Agendamento (idCliente, id_status_Agendamento, vl_total, vl_desconto, dt_agendamento, ds_motivo_cancelamento, dt_cadastro, id_usuario_cadastro, dt_alteracao, id_usuario_alteracao)
values (2, 4, 49.90, 15, '2023/07/26 23:00', 'horario muito tarde' ,'2023/02/25', 2 ,'2023/02/23', 1)

INSERT INTO Agendamento (idCliente, id_status_Agendamento, vl_total, vl_desconto, dt_agendamento, ds_motivo_cancelamento, dt_cadastro, id_usuario_cadastro, dt_alteracao, id_usuario_alteracao)
values (3, 4, 25.90, 10, '2023/06/19 15:22', 'cliente longe do local' ,'2023/04/22', 3 ,'2023/06/22', 1)

-- Inserir 2 agendamentos com status Confirmado para um mesmo cliente com 2 serviços cada

INSERT INTO Agendamento (idCliente, id_status_Agendamento, vl_total, vl_desconto, dt_agendamento, ds_motivo_cancelamento, dt_cadastro, id_usuario_cadastro, dt_alteracao, id_usuario_alteracao)
values (3, 2, 49.90, 15, '2023/07/15 13:54', '' ,'2023/03/19', 3 ,'2023/06/15', 1)


INSERT INTO Agendamento (idCliente, id_status_Agendamento, vl_total, vl_desconto, dt_agendamento, ds_motivo_cancelamento, dt_cadastro, id_usuario_cadastro, dt_alteracao, id_usuario_alteracao)
values (3, 2, 50.30, 15, '2023/08/16 13:44', '' ,'2023/08/10', 3 ,'2023/08/17', 1)


INSERT INTO Agendamento (idCliente, id_status_Agendamento, vl_total, vl_desconto, dt_agendamento, ds_motivo_cancelamento, dt_cadastro, id_usuario_cadastro, dt_alteracao, id_usuario_alteracao)
values (1, 2, 90, 15, '2023/05/02 13:59', '' ,'2023/01/15', 1 ,'2023/05/7', 1)


INSERT INTO Agendamento (idCliente, id_status_Agendamento, vl_total, vl_desconto, dt_agendamento, ds_motivo_cancelamento, dt_cadastro, id_usuario_cadastro, dt_alteracao, id_usuario_alteracao)
values (1, 2, 25, 15, '2023/07/25 17:59', '' ,'2023/07/15', 1 ,'2023/07/20', 1)
-- Agendamento e AgendamentoServico

SELECT * FROM AgendamentoServico



INSERT INTO AgendamentoServico (id_agendamento,id_servico)
VALUES (9,1)


INSERT INTO AgendamentoServico (id_agendamento,id_servico)
VALUES (10,11)

INSERT INTO AgendamentoServico (id_agendamento,id_servico)
VALUES (11,17)

INSERT INTO AgendamentoServico (id_agendamento,id_servico)
VALUES (12,16)


INSERT INTO AgendamentoServico (id_agendamento,id_servico)
VALUES (13,17)

INSERT INTO AgendamentoServico (id_agendamento,id_servico)
VALUES (14,11) 

INSERT INTO AgendamentoServico (id_agendamento,id_servico)
VALUES (15,10)

INSERT INTO AgendamentoServico (id_agendamento,id_servico)
VALUES (16,12)
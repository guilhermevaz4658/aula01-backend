CREATE DATABASE sistema_agendamento;

USE sistema_agendamento;

SELECT DATABASE();

CREATE TABLE usuarios(
	id INT PRIMARY KEY auto_increment,
    nome varchar(100) NOT NULL,
    email varchar(100) not null,
    senha varchar(50) not null
);

CREATE TABLE servicos(
	id int primary key auto_increment,
    nome varchar(100) not null,
    preco decimal(10,2) not null,
    ativo boolean not null default true
);

CREATE TABLE agendamentos(
	id int primary key auto_increment,
    data_agendamento datetime not null,
    usuario_id int not null,
    servico_id int not null,
    foreign key (usuario_id) references usuarios(id),
    foreign key (servico_id) references servicos(id)
);

INSERT INTO usuarios (nome, email, senha) 
VALUES
('João Pereira', 'joao@email.com', '123456'),
('Maria Santos', 'maria@email.com', '123456'),
('Carlos Almeida', 'carlos@email.com', '123456');

SELECT * FROM usuarios; 

INSERT INTO servicos (nome, preco, ativo) VALUES
('Corte de cabelo', 50.00, true),
('Hidratação', 80.00, true),
('Coloração', 120.00, true);

SELECT * FROM servicos;

INSERT INTO agendamentos (data_agendamento, usuario_id, servico_id) VALUES
('2026-05-20 14:00:00', 1 , 1),
('2026-05-21 09:30:00', 2 , 2),
('2026-05-22 16:00:00', 3 , 3);

SELECT * FROM agendamentos;

INSERT INTO usuarios (nome, email, senha) VALUES ('Ana Souza', 'ana@email.com', '123456');
INSERT INTO servicos (nome, preco, ativo) VALUES ('Sobrancelha', 35.00, true);
INSERT INTO agendamentos (data_agendamento, usuario_id, servico_id) VALUES ('2026-05-23 09:00:00', 4, 4);

SELECT * FROM usuarios;
SELECT * FROM servicos;
SELECT * FROM agendamentos;
SELECT nome, email FROM usuarios;
SELECT nome, preco FROM servicos;

delete from usuarios where id = 5;
delete from servicos where id = 5;
delete from agendamentos where id = 5;

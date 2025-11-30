
INSERT INTO Responsavel (nome, cpf_responsavel, telefone, email) VALUES
('Mario Silva', '10805271384', '(11) 94578-1451', 'mario.silva@email.com'),
('Paula Oliveira', '23552887475', '(11) 96888-4572', 'paula.oliveira@email.com'),
('Douglas Fernandes', '67297652246', '(11) 98745-7843', 'douglas.fernandes@email.com');


INSERT INTO Professor (nome_professor, cref, telefone) VALUES
('Treinador João', '12345-G/SP', '(11) 95475-4800'),
('Treinador Eduardo', '67890-G/SP', '(11) 99844-0547');


INSERT INTO Aluno (nome, data_nascimento, categoria, id_responsavel) VALUES
('Pedro Silva', '2014-05-10', 'Sub-11', 1),
('Enzo Oliveira', '2012-08-20', 'Sub-13', 2),
('Valentina Fernandes', '2014-02-15', 'Sub-11', 3);


INSERT INTO Turma (categoria_atendida, horario, id_professor) VALUES
('Sub-11', '09:00:00', 1),
('Sub-13', '14:00:00', 2);


INSERT INTO Matricula (id_aluno, id_turma, data_matricula, status) VALUES
(1, 1, '2023-01-15', 'Ativo'),
(2, 2, '2023-01-20', 'Ativo'),
(3, 1, '2023-02-10', 'Ativo');

INSERT INTO Boleto (id_matricula, data_emissao, data_vencimento, valor, codigo_boleto) VALUES
(1, '2023-01-15', '2023-02-10', 150.00, 'BOL001A'),
(2, '2023-01-20', '2023-02-10', 150.00, 'BOL002B'),
(3, '2024-02-01', '2024-02-10', 150.00, 'BOL003C');


INSERT INTO Pagamento (id_boleto, data_pagamento, status_pagamento, metodo) VALUES
(1, '2023-02-09', 'Pago', 'Pix'),
(2, '2023-02-10', 'Pago', 'Cartão'),
(3, '2024-02-09', 'Pago', 'Boleto');


INSERT INTO Presenca (id_matricula, data_treino, status_presenca) VALUES
(1, '2023-03-01', 'Presente'),
(2, '2023-03-01', 'Presente'),
(3, '2023-03-03', 'Falta');



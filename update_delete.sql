1. Atualizar status da matrícula do aluno 3
UPDATE Matricula
SET status = 'Inativo'
WHERE id_matricula = 3;

-- 2. Atualizar telefone do responsável de id 2
UPDATE Responsavel
SET telefone = '(11) 99999-0000'
WHERE id_responsavel = 2;

-- 3. Atualizar valor do boleto do aluno 3
UPDATE Boleto
SET valor = 200.00
WHERE id_matricula = 3;

-- =====================================
-- COMANDOS DELETE
-- =====================================

-- 1. Deletar presença de treino anterior a 01/03/2023
DELETE FROM Presenca
WHERE data_treino < '2023-03-01';

-- 2. Deletar matrícula inativa
DELETE FROM Matricula
WHERE status = 'Inativo';

-- 3. Deletar aluno que não tem matrícula
DELETE FROM Aluno
WHERE id_aluno NOT IN (SELECT id_aluno FROM Matricula);
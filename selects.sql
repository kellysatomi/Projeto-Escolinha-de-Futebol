-- 1. Listar todos os alunos com o nome do responsável
SELECT a.nome AS Aluno, r.nome AS Responsavel
FROM Aluno a
JOIN Responsavel r ON a.id_responsavel = r.id_responsavel
ORDER BY a.nome;

-- 2. Listar todas as turmas com o professor responsável
SELECT t.categoria_atendida AS Turma, t.horario, p.nome_professor AS Professor
FROM Turma t
JOIN Professor p ON t.id_professor = p.id_professor
ORDER BY t.categoria_atendida;

-- 3. Listar todas as matrículas ativas
SELECT m.id_matricula, a.nome AS Aluno, t.categoria_atendida AS Turma, m.status
FROM Matricula m
JOIN Aluno a ON m.id_aluno = a.id_aluno
JOIN Turma t ON m.id_turma = t.id_turma
WHERE m.status = 'Ativo';

-- 4. Listar todos os pagamentos feitos, com aluno e valor
SELECT a.nome AS Aluno, b.valor, p.metodo, p.status_pagamento
FROM Pagamento p
JOIN Boleto b ON p.id_boleto = b.id_boleto
JOIN Matricula m ON b.id_matricula = m.id_matricula
JOIN Aluno a ON m.id_aluno = a.id_aluno
WHERE p.status_pagamento = 'Pago'
ORDER BY a.nome;

-- 5. Listar presenças de alunos em determinado treino
SELECT a.nome AS Aluno, pr.data_treino, pr.status_presenca
FROM Presenca pr
JOIN Matricula m ON pr.id_matricula = m.id_matricula
JOIN Aluno a ON m.id_aluno = a.id_aluno
WHERE pr.data_treino = '2023-03-01'
ORDER BY a.nome;
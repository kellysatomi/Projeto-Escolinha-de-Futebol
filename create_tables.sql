

CREATE TABLE Responsavel (
    id_responsavel INTEGER PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    cpf_responsavel VARCHAR(14) NOT NULL UNIQUE,
    telefone VARCHAR(15),
    email VARCHAR(100)
);


CREATE TABLE Professor (
    id_professor INTEGER PRIMARY KEY,
    nome_professor VARCHAR(100) NOT NULL,
    cref VARCHAR(10) UNIQUE,
    telefone VARCHAR(15)
);

-- Aluno
CREATE TABLE Aluno (
    id_aluno INTEGER PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    data_nascimento DATE NOT NULL,
    categoria VARCHAR(10),
    id_responsavel INTEGER NOT NULL,
    FOREIGN KEY (id_responsavel) REFERENCES Responsavel(id_responsavel)
);

-- Turma
CREATE TABLE Turma (
    id_turma INTEGER PRIMARY KEY,
    categoria_atendida VARCHAR(10) NOT NULL,
    horario TIME NOT NULL,
    id_professor INTEGER NOT NULL,
    FOREIGN KEY (id_professor) REFERENCES Professor(id_professor)
);


CREATE TABLE Matricula (
    id_matricula INTEGER PRIMARY KEY,
    id_aluno INTEGER NOT NULL,
    id_turma INTEGER NOT NULL,
    data_matricula TEXT NOT NULL,
    status VARCHAR(10) NOT NULL,
    FOREIGN KEY (id_aluno) REFERENCES Aluno(id_aluno),
    FOREIGN KEY (id_turma) REFERENCES Turma(id_turma)
);


CREATE TABLE Boleto (
    id_boleto INTEGER PRIMARY KEY,
    id_matricula INTEGER NOT NULL,
    data_emissao DATE NOT NULL,
    data_vencimento DATE NOT NULL,
    valor DECIMAL(10,2) NOT NULL,
    codigo_boleto VARCHAR(50) UNIQUE,
    FOREIGN KEY (id_matricula) REFERENCES Matricula(id_matricula)
);

CREATE TABLE Pagamento (
    id_pagamento INTEGER PRIMARY KEY,
    id_boleto INTEGER NOT NULL,
    data_pagamento VARCHAR(20) NOT NULL,
    status_pagamento VARCHAR(20),
    metodo VARCHAR(20) NOT NULL,
    FOREIGN KEY (id_boleto) REFERENCES Boleto(id_boleto)
);


CREATE TABLE Presenca (
    id_presenca INTEGER PRIMARY KEY,
    id_matricula INTEGER NOT NULL,
    data_treino DATE NOT NULL,
    status_presenca VARCHAR(10) NOT NULL,
    FOREIGN KEY (id_matricula) REFERENCES Matricula(id_matricula)
);

 Projeto EscolinhaSQL

Esse projeto é um banco de dados de uma escolinha de futebol, criado para praticar SQL e manipulação de dados. Aqui você encontra todas as tabelas, dados de exemplo e consultas para testar o funcionamento do banco.

## Tabelas do banco

- **Responsavel**: informações de pais ou responsáveis pelos alunos.  
- **Professor**: dados dos treinadores.  
- **Aluno**: informações dos alunos e o responsável de cada um.  
- **Turma**: horários e categorias atendidas, com o professor responsável.  
- **Matricula**: registro das matrículas dos alunos nas turmas, com data e status.  
- **Boleto**: dados de cobrança de cada matrícula.  
- **Pagamento**: informações sobre pagamentos realizados.  
- **Presenca**: registro de presença dos alunos nos treinos.

## Scripts

- `inserts.sql` → insere os dados de exemplo em todas as tabelas.  
- `selects.sql` → consultas para testar e ver os dados conectados entre tabelas.  
- `update_delete.sql` → exemplos de como alterar e remover dados.  

## Como usar

1. Crie todas as tabelas no seu banco de dados (você pode usar o script de criação das tabelas).  
2. Execute o arquivo `inserts.sql` para inserir os dados de exemplo.  
3. Execute `selects.sql` para ver os dados e como as tabelas se relacionam.  
4. Execute `update_delete.sql` para testar alterações e exclusões de dados.  


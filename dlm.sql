-- DLM
INSERT INTO
	sistemaescolar.instituicao
	(nomeInstituicao, enderecoInstituicao, telefoneInstituicao)
VALUES
('Senai - Cyber e IA', 'Rua niterói, 180 - São Caetano do Sul', '2022-2554'),
('Etec Lauro Gomes', 'Rua Lauro Gomes, 400 - São Bernado do Campo', '4002-8922');

-- DQL
SELECT nomeInstituicao FROM instituicao;

INSERT INTO 
	sistemaescolar.alunos
    (nomeAluno, matriculaAluno, cursoAluno, instituicaoId)
VALUES
('Matheus', '123456789', 'Programação Backend', 2),
('João Henrique', '456789123', 'Programação Backend', 1),
('Francisco', '789456123', 'Programação Backend', 1),
('João Vitor', '987654321', 'Programação Backend', 1),
('Noberto', '654321987', 'Programação Backend', 2),
('Ceni', '010101010', 'Protetor de Dados', 2),
('Tafarel', '987321654', 'Protetor de Dados', 2),
('Arboleda', '321654987', 'Cyber Segurança', 1),
('Calleri', '090909090', 'Ataque Cyber', 2),
('Pablo', '111111111', 'Ataque Cyber', 2);


-- UPDATE
UPDATE alunos
	SET matriculaAluno = '888888888' 
    WHERE matriculaAluno = '111111111';
    
UPDATE alunos
	SET matriculaAluno = '777777777'
    WHERE matriculaAluno = 'Calleri';

-- DELETE
DELETE FROM alunos
	WHERE matriculaAluno = '111111111';


-- desabilitando o safe mode update
set sql_safe_updates = 0;



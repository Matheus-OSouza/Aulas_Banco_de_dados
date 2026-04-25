-- DQL
-- SELECT -> super
SELECT * FROM ALUNOS; -- retorna os dados
SELECT * FROM instituicao;

SELECT nomeInstituicao, enderecoInstituicao FROM instituicao;

-- WHERE -> filtragem
SELECT nomeAluno, cursoAluno 
	FROM alunos
	WHERE cursoAluno = 'Programação Backend';
    
-- quantos alunos tenho por curso?
SELECT 
	cursoAluno,
    COUNT(*) AS quantidadeAlunos -- conta todos os alunos
    FROM alunos GROUP BY cursoAluno
    ORDER BY quantidadeAlunos desc; -- DESC -> maior para o menor / ASC menor para o menor
    
-- os alunos e a sua instituição de ensino!
SELECT 
	sistemaescolar.alunos.nomeAluno,
    cursoAluno,
    nomeInstituicao
    FROM alunos
    JOIN instituicao ON alunos.instituicaoId = instituicao.idInstituicao;
    
-- quantos alunos existem dentro de uma instituicao?
SELECT 
	nomeInstituicao,
    COUNT(*) AS quantidadeAlunos -- conta todos os alunos
    FROM alunos 
    JOIN instituicao ON alunos.instituicaoId = instituicao.idInstituicao
    GROUP BY nomeInstituicao
    ORDER BY quantidadeAlunos desc;
    
-- exiba quantos alunos existem em um curso X da instituicao Y
SELECT
	a.nomeAluno as Aluno,
    a.cursoAluno as Curso,
    i.nomeInstituicao as Instituicao
    FROM alunos a
    JOIN instituicao i on a.instituicaoId = i.idInstituicao
    WHERE i.idInstituicao = 2;
    
SELECT
	i.nomeInstituicao,
    a.cursoAluno,
    count(*) as Total_aluno
    from instituicao i
    join alunos a on i.idInstituicao = a.instituicaoId
    group by i.nomeInstituicao, a.cursoAluno
    order by i.nomeInstituicao desc;
   

describe alunos; -- retorna as caracteristicas da tabela

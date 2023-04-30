CREATE TABLE Cursos(
    cod INTEGER,
    nome VARCHAR(20),
    CONSTRAINT cursos_pk PRIMARY KEY(cod),
);

CREATE TABLE Alunos(
    id INTEGER,
    nome VARCHAR(20),
    morada VARCHAR(60),
    mediaCurso DOUBLE,
    CONSTRAINT alunos_cursos_pk FOREING KEY(cod) REFERENCES Doentes(Cursos)
);



SELECT COUNT(*)
FROM Alunos;


SELECT Curso.nome, Aluno.id
FROM Aluno, Curso
WHERE Aluno.id="125" AND Aluno.cod=Curso.cod;


SELECT Alunos.cod, COUNT(Alunos.cod)
FROM Alunos
GROUP BY Alunos.cod
HAVING COUNT(Alunos.cod)>10; 


SELECT id, mediaCurso,nome
FROM Alunos 
WHERE nome LIKE "P__%";
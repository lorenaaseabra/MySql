CREATE TABLE Doentes(
	numerointerno integer, 
	nome varchar(40),
	morada varchar(60), /
	sexo char(10)
	CONSTRAINT doentes_pk PRIMARY KEY(numerointerno)
);

CREATE TABLE Internamentos(
	codigo integer,
	nimerointerno integer,
	servico varchar(20),
	dataentrada date/char(10),
	CONSTRAINT internamentos_pk PRIMARY KEY(codigo),
	CONSTRAINT internamentos_doentes_pk FOREING KEY(numero interno) REFERENCES Doentes(numerointerno)
);
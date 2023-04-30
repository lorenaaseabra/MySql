CREATE TABLE Empregado(
    cod INT NOT NULL UNIQUE,
    nome CHAR (20),
    data_nasc CHAR(20),
    id INTEGER,
    FOREIGN KEY (id) REFERENCES Empresa,
    PRIMARY KEY(cod)
);

CREATE TABLE Empresa(
    id INTEGER PRIMARY KEY,
    nome_empresa CHAR (50),
    destrito CHAR (20)
);

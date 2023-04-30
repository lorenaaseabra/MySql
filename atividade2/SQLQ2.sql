SET SQL_SAFE_UPDATES = 0;

CREATE TABLE Autor (
	id INT NOT NULL UNIQUE,
    nome CHAR(40),
	nacionalidade CHAR(30),
    PRIMARY KEY(id)
);

CREATE TABLE Livro (
	id_book INT NOT NULL UNIQUE,
    titulo CHAR(40),
    editora CHAR(30),
    PRIMARY KEY (id_book)
);

CREATE TABLE Autoria (
	id_book INT,
    id INT
);

ALTER TABLE Autoria ADD FOREIGN KEY (id_book) REFERENCES Livro (id_book);
ALTER TABLE Autoria ADD FOREIGN KEY (id) REFERENCES Autor (id);

INSERT INTO Autor VALUES (1, "JK Rowling", "Inglesa");
INSERT INTO Autor VALUES (2, "Penelope Douglas", "Americana");
INSERT INTO Autor VALUES (3, "Aldous Huxley", "Americano");
INSERT INTO Autor VALUES (4, "George Orwell", "Inglês");
INSERT INTO Autor VALUES (5, "Machado de Assis", "Brasileiro");

INSERT INTO Livro VALUES (1, "Harry Potter e a Pedra Filosofal", "Rocco");
INSERT INTO Livro VALUES (2, "Punk57", "Wook");
INSERT INTO Livro VALUES (3, "Admiravel mundo novo", "Wook");
INSERT INTO Livro VALUES (4, "1984", "Penguim");
INSERT INTO Livro VALUES (5, "Dom Casmurro", "Wook");

INSERT INTO Autoria VALUES (1, 1);
INSERT INTO Autoria VALUES (2, 2);
INSERT INTO Autoria VALUES (3, 3);
INSERT INTO Autoria VALUES (4, 4);
INSERT INTO Autoria VALUES (5, 5);

DELETE FROM Autoria WHERE id_book=4; 
DELETE FROM Livro WHERE titulo="1984"; 
SELECT nacionalidade FROM Autor; 
SELECT nome, titulo FROM Autor JOIN Livro ON Autor.id = Livro.id_book; 
SELECT COUNT(nome), titulo FROM Autor JOIN Livro ON Autor.id = Livro.id_book 
	GROUP BY titulo; 
SELECT titulo FROM Autor JOIN Livro ON Autor.id = Livro.id_book
	WHERE Autor.nacionalidade=""; 
SELECT nome FROM Autor JOIN Livro ON Autor.id = Livro.id_book
	WHERE Livro.editora=""; 
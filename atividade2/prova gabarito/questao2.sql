CREATE TABLE Clientes(
    id INTEGER,
    nomeCliente VARCHAR(20),
    nomeEmpresa VARCHAR(60),
    cidadeEmpresa VARCHAR(30),
    CONSTRAINT Clientes_pk PRIMARY KEY(id)
);

SELECT id AS codigo, nomeEmpresa AS Empresa 
FROM Clientes
ORDER BY nomeEmpresa;


SELECT nomeCliente
FROM Clientes
WHERE cidadeEmpresa is NULL; 


UPDATE Clientes 
SET cidadeEmpresa="Gaia"
WHERE cidadeEmpresa=="Capgernini";


DELETE FROM Clientes;

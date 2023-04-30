CREATE TABLE Countries(
	id INT NOT NULL UNIQUE, 
	name CHAR(20),
	continent CHAR(20),
	area INTEGER,
	population INTEGER, 
	gdp INTEGER, 
	PRIMARY KEY(id),
);

-----------------------------------------

INSERT INTO Countries VALUES(1, "Germany", "Europe", 850000, 45000000, 890560)
INSERT INTO Countries VALUES(2, "Italy", "Europe", 670000, 31000000, 215085)
INSERT INTO Countries VALUES(3, "Chile", "South America", 695000, 19000000, 75000)
INSERT INTO Countries VALUES(4, "South Korea", "Asia", 389000, 28500000, 780000)
INSERT INTO Countries VALUES(5, "Portugal", "Europe", 215000, 11500000, 68000)
-------------------------------------------

SELECT name, continent, area, population, gdp FROM Countries;
SELECT name, continent FROM Countries;
SELECT population FROM Countries WHERE name = "germany";
SELECT name FROM countries WHERE area > 5000000;
SELECT distinct name FROM countries ;
SELECT ROUND((population/area), 2) FROM countries WHERE continent="Europe"; 
SELECT MAX(population) FROM countries; 
SELECT name FROM countries WHERE name LIKE '%y'; 
SELECT name FROM countries WHERE SUBSTR(name, 2, 1)="o"; 
SELECT name FROM countries WHERE LENGTH(name)=5; 
SELECT name FROM countries WHERE continent!="Europe"; 
SELECT SUM(population), SUM(population)/5 FROM countries; 
SELECT COUNT(name), continent FROM countries GROUP BY continent; 
SELECT SUM(population) FROM countries GROUP BY continent ORDER BY SUM(population) DESC; 
SELECT name, LENGTH(name) FROM countries; 
SELECT CURRENT_DATE, CURRENT_TIME; 
SELECT SUM(gdp) FROM countries GROUP BY continent WHERE SUM(gdp)>100000; 
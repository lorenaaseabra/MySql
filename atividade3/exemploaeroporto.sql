CREATE TABLE Airport(
    city CHAR(20),
    country CHAR (20),
    PRIMARY KEY(city)
);

CREATE TABLE Flight(
    flightid INTEGER PRIMARY KEY;
    date CHAR(10),
    depparttime CHAR(10),
    arrivaltime CHAR(10),
    FOREING KEY(departcity) REFERENCES Airport,
    FOREING KEY(arrivalcity) REFERENCES Airport,
    FOREING KEY(planetype) REFERENCES Plane
);

CREATE TABLE Plane(
    planetype CHAR(30);
    numberofpassengers INTEGER,
    PRIMARY KEY (planetype)
)

SELECT DISTINCT country FROM Airport;
SELECT MAX(numberofpassengers) FROM Plane;
SELECT COUNT(*)
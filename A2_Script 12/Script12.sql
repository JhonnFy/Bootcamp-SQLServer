/*
Script 12
Un videoclub que alquila películas en video almacena la información de sus películas en alquiler en una tabla denominada 'películas'.

Prerrequisitos:
Elimine si existe.
Cree una tabla con los siguientes atributos:título, actor, duración, cantidad.
Ingresar n registros.
Seleccione las películas cuya duración no supere los 90 minutos.
Seleccione el título de todas las películas en las que el actor no sea "Tom Cruise" (2 registros).
Muestre todos los campos, excepto duración de todas las películas de las que haya más de 2 copias (2 registros).*/

CREATE DATABASE DataPeliculas
GO

DROP TABLE IF EXISTS Peliculas
GO

CREATE TABLE Peliculas(
Titulo VARCHAR(50) NOT NULL,
Actor VARCHAR(50) NOT NULL,
Duracion INT NOT NULL,
Cantidad INT NOT NULL
)
GO

INSERT INTO Peliculas (Titulo, Actor, Duracion, Cantidad) VALUES ('El Padrino','Mario Puzo',100,100)
INSERT INTO Peliculas (Titulo, Actor, Duracion, Cantidad) VALUES ('El Padrino II','Mario Puzo',90,50)
INSERT INTO Peliculas (Titulo, Actor, Duracion, Cantidad) VALUES ('El Padrino III','Mario Puzo',80,20)
INSERT INTO Peliculas (Titulo, Actor, Duracion, Cantidad) VALUES ('El Padrino IV','Mario Puzo',70,10)
INSERT INTO Peliculas (Titulo, Actor, Duracion, Cantidad) VALUES ('Mision Imposible','Tom Cruise',60,10)
INSERT INTO Peliculas (Titulo, Actor, Duracion, Cantidad) VALUES ('Mision Imposible II','Tom Cruise',50,1)

SELECT * FROM Peliculas a
GO

SELECT * FROM Peliculas a WHERE a.Duracion <= '90'
GO

SELECT * FROM Peliculas a WHERE a.Actor <> 'Tom Cruise'
GO

SELECT a.Titulo, a.Actor, a.Cantidad FROM Peliculas a WHERE a.Cantidad >= '2'
GO
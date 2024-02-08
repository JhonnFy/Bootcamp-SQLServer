/*
Un videoclub que alquila películas en video almacena la información de sus películas en una tabla llamada "peliculas"; 
Para cada película necesita los siguientes datos:
-Nombre, cadena de caracteres de 50 longitud.
-Actor, cadena de caracteres de 50 longitud.
-Duración, valor numérico entero.
-Cantidad de copias: Valor Entero.

Prerrequisitos:
1-Elimine si existe.
2-Cree la tabla eligiendo el tipo de dato adecuado para cada campo.
3-Insertar 5 Registros
4-Imprimir resultados
*/


CREATE DATABASE VideoClub
GO

USE VideoClub
GO

DROP TABLE IF EXISTS Peliculas
GO

CREATE TABLE Peliculas (
Nombre Varchar(50) Not Null,
Actor  Varchar(50) Not Null,
Duracion INT Not Null,
CantidadDeCopias INT Not Null
)
GO

INSERT INTO Peliculas (Nombre, Actor, Duracion, CantidadDeCopias) VALUES ('La Odisea', 'Homero',20,100)
INSERT INTO Peliculas (Nombre, Actor, Duracion, CantidadDeCopias) VALUES ('Vivir Para Contarla', 'Gabriel',20,100)
INSERT INTO Peliculas (Nombre, Actor, Duracion, CantidadDeCopias) VALUES ('Scopion City','Mario',20,100)
INSERT INTO Peliculas (Nombre, Actor, Duracion, CantidadDeCopias) VALUES ('Libertand', 'Alvaro',20,100)
INSERT INTO Peliculas (Nombre, Actor, Duracion, CantidadDeCopias) VALUES ('El Ruido De Las Cosas Al Caer','Juan',20,100)

SELECT * FROM Peliculas
GO


/*
Script 4.
Un videoclub que alquila películas en video almacena la información de sus películas en alquiler en una tabla llamada "Películas".

Prerrequisitos:
1-Elimine la tabla si existe.
2-Crear la tabla.
3-Ver la estructura de las columnas.
4-Ingrese 3 registros.
5-Imprima el título y el autor de las películas.
6-Imprima el título y el tiempo de duración de las películas.
7-Imprima el tirulo y la cantidad de copias realizadas.
*/

--CREATE DATABASE VideoClub
--GO

USE VideoClub
GO

DROP TABLE IF EXISTS VideoClub
GO

CREATE TABLE VideoClub(
TituloPelicula VARCHAR(50) NOT NULL,
TiempoDeDuracion  INT NOT NULL,
CopiasRealizadas INT NOT NULL,
NombreAutor VARCHAR(50) NOT NULL,
ExperienciaEnlMercado INT NOT NULL
)
GO

INSERT INTO VideoClub (TituloPelicula,TiempoDeDuracion,CopiasRealizadas,NombreAutor,ExperienciaEnlMercado) VALUES ('Diario De Vida', 5,100,'Almaro Rojas',10)

EXECUTE sp_columns VideoClub
GO

SELECT a.TituloPelicula, a.NombreAutor FROM VideoClub a
GO

SELECT a.TituloPelicula, a.TiempoDeDuracion FROM VideoClub a
GO

SELECT a.TituloPelicula, a.CopiasRealizadas FROM VideoClub a
GO

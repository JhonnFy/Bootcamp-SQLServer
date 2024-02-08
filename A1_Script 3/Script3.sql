/*
Crear la tabla "Libros", con diferentes atributos, indispensable nombre del libro y de autor.

Prerrequisitos:
1-Elimine la tabla, si existe.
2-Cree la tabla eligiendo el tipo adecuado de datos para cada campo.
3-Consulte la estructura de las columnas.
4-Ingrese 5 registros
5-Imprima en pantalla, 2 atributos
*/


CREATE DATABASE DataLibros
GO

DROP TABLE IF EXISTS Libros
GO

USE DataLibros
GO

CREATE TABLE Libros(
NombreLibro VARCHAR(50) NOT NULL,
NombreAutor VARCHAR(50) NOT NULL,
NumeroDeHojas INT NOT NULL,
LibrosEscritos INT NOT NULL,
NombreEditorial VARCHAR(50) NOT NULL
)
GO


INSERT INTO Libros (NombreLibro, NombreAutor, NumeroDeHojas, LibrosEscritos, NombreEditorial) VALUES ('El Ruido De Las Cosas Al Caer', 'Juan Gabriel Vasquez', 100, 20, 'Planeta')
INSERT INTO Libros (NombreLibro, NombreAutor, NumeroDeHojas, LibrosEscritos, NombreEditorial) VALUES ('Vivir Para Contarla', 'Gabriel Garcia', 800, 50, 'Planeta')
INSERT INTO Libros (NombreLibro, NombreAutor, NumeroDeHojas, LibrosEscritos, NombreEditorial) VALUES ('Satanas', 'Mario Mendoza', 100, 20, 'Planeta')
INSERT INTO Libros (NombreLibro, NombreAutor, NumeroDeHojas, LibrosEscritos, NombreEditorial) VALUES ('Scorpion City', 'Mario Mendoza', 100, 20, 'Planeta')
INSERT INTO Libros (NombreLibro, NombreAutor, NumeroDeHojas, LibrosEscritos, NombreEditorial) VALUES ('La Odisea', 'Homero', 100, 20, 'Planeta')
GO

EXECUTE sp_columns Libros
GO

SELECT a.NombreLibro, a.NombreAutor  FROM Libros a
GO


/*
Trabaje con la tabla "Libros" de una librería que guarda información referente a sus libros disponibles para la venta.

1-Elimine la tabla si existe.
2-Cree la tabla de libros, con los siguientes atributos: título, autor, editorial.
3-Visualice la estructura de la tabla 'libros'.
4-Ingrese n registros.
5-Seleccione los registros cuyo autor sea 'Borges' (1 Registro).
6-Seleccione los títulos de los libros cuya editorial sea 'Planeta' (2 registros).
7-Seleccione los nombres de las editoriales de los libros cuyo título sea "Martin Fierro" (2 registros).*/


CREATE DATABASE Libreria
GO

DROP TABLE IF EXISTS Libros
GO

CREATE TABLE Libros(
Titulo VARCHAR(50) NOT NULL,
Autor VARCHAR(50) NOT NULL,
Editorial VARCHAR(50) NOT NULL
)
GO

INSERT INTO Libros (Titulo, Autor, Editorial) VALUES ('Laberintos','Borges','Planeta')
INSERT INTO Libros (Titulo, Autor, Editorial) VALUES ('Martin Fierro','José Hernández','Planeta')
INSERT INTO Libros (Titulo, Autor, Editorial) VALUES ('Vivir Para Contarla','Gabriel Garcia','Planeta')
INSERT INTO Libros (Titulo, Autor, Editorial) VALUES ('Diario De Un Secuestro','Gabriel Garcia','Planeta')
GO

SELECT * FROM Libros
GO

SELECT * FROM Libros a WHERE a.Editorial = 'Planeta'
GO

SELECT * FROM Libros a WHERE a.Titulo = 'Martin Fierro'
GO

/*
Un comercio que vende artículos de computación registra los datos de sus artículos en una tabla con ese nombre.

Prerrequisitos:
1-Elimine la tabla de artículos.
2-Cree la tabla con los siguientes atributos: código, nombre, descripción, precio, cantidad.
3-Consulte la estructura de las columnas.
4-Ingresar n registros.
5-Seleccione los datos de las impresoras (2 registros).
6-Seleccione el código y el nombre de los artículos cuya cantidad sea menor a 30 (2 registros).
8-Seleccione el precio y la descripción de los artículos que NO cuestan $100.000, pesos (2 registros).*/

CREATE DATABASE DataArticulos
GO

USE DataArticulos
GO

DROP TABLE IF EXISTS DataArticulos
GO

CREATE TABLE DataArticulos(
Codigo INT PRIMARY KEY NOT NULL,
Descripcion VARCHAR(50) NOT NULL,
Precio FLOAT NOT NULL,
Cantidad INT NOT NULL
)
GO


INSERT INTO DataArticulos (Codigo,Descripcion,Precio,Cantidad) VALUES ('1','Sku 1', 100000,100)
INSERT INTO DataArticulos (Codigo,Descripcion,Precio,Cantidad) VALUES ('2','Impresora', 100000,100)
INSERT INTO DataArticulos (Codigo,Descripcion,Precio,Cantidad) VALUES ('3','Impresora', 10000,10)
INSERT INTO DataArticulos (Codigo,Descripcion,Precio,Cantidad) VALUES ('4','Impresora', 20000,20)
INSERT INTO DataArticulos (Codigo,Descripcion,Precio,Cantidad) VALUES ('5','Impresora', 30000,30)
INSERT INTO DataArticulos (Codigo,Descripcion,Precio,Cantidad) VALUES ('6','Impresora', 40000,40)
GO

SELECT * FROM DataArticulos
GO

SELECT a.Codigo, a.Descripcion FROM DataArticulos a WHERE a.Cantidad <= '30'
GO

SELECT a.Precio, a.Descripcion FROM DataArticulos a WHERE a.Precio < '100000'
GO

EXECUTE sp_columns DataArticulos
GO


/*
Trabaje con una tabla de nombre 'Agenda' y registre datos correspondientes a sus amigos.

Elimine la tabla si existe.
Cree la tabla con los siguientes atributos: apellido, nombre, domicilio, teléfono.
Ingrese n registros.
Elimine el registro cuyo nombre sea 'Juan'.
Elimine los registros cuyo número de teléfono sea igual a '1234567' (2 registros).
Muestre la tabla.
Elimine todos los registros.
Muestre las columnas de la tabla.*/

CREATE DATABASE DataAgenda
GO

DROP TABLE IF EXISTS DataAgenda
GO

CREATE TABLE DataAgenda(
Apellido VARCHAR(50) NOT NULL,
Nombre VARCHAR(50) NOT NULL,
Domicilio VARCHAR(50) NOT NULL,
Telefono VARCHAR(50) NOT NULL
)
GO

INSERT INTO DataAgenda (Apellido, Nombre, Domicilio, Telefono) VALUES ('Garcia', 'Juan', 'Cra7 #8-20 Este','7654321')
INSERT INTO DataAgenda (Apellido, Nombre, Domicilio, Telefono) VALUES ('Mora', 'Pedro', 'Cra7 #8-21 Este','1234567')
INSERT INTO DataAgenda (Apellido, Nombre, Domicilio, Telefono) VALUES ('Rojas', 'David', 'Cra7 #8-22 Este','5478965')
INSERT INTO DataAgenda (Apellido, Nombre, Domicilio, Telefono) VALUES ('Castiblanco', 'Pablo', 'Cra7 #8-23 Este','1235789')
INSERT INTO DataAgenda (Apellido, Nombre, Domicilio, Telefono) VALUES ('Castillo', 'Ricardo', 'Cra7 #8-24 Este','8452174')
INSERT INTO DataAgenda (Apellido, Nombre, Domicilio, Telefono) VALUES ('Perez', 'Andres', 'Cra7 #8-25 Este','6852147')

SELECT * FROM DataAgenda
GO

DELETE DataAgenda WHERE Nombre = 'Juan'
GO

DELETE DataAgenda WHERE Telefono = '1234567'
GO

DELETE DataAgenda 
GO

EXECUTE sp_columns DataAgenda
GO

SELECT * FROM DataAgenda
GO

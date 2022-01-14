##

CREATE DATABASE VET;
USE VET ;

# A) CREAR TABLA MASCOTAS CON CAMPOS ID, NOMBRE, ID_DUENO, SERVICIO
CREATE TABLE MASCOTAS (
ID INT NOT NULL,
NOMBRE VARCHAR(20),
ID_DUENO INT NOT NULL,
SERVICIO VARCHAR(12)
);

#B) CREAR TABLA PERSONAS CAMPOS ID, NOMBRE, APELLIDO, ID_DUENO, COD_ZIP, TL
CREATE TABLE PERSONAS(
ID INT NOT NULL,
NOMBRE VARCHAR(20),
APELLIDO VARCHAR(20),
ID_DUENO INT NOT NULL,
COD_ZIP INT NOT NULL,
TL INT
);
DESC MASCOTAS;
DESC PERSONAS;

# C) CREAR TABLA DIRECCIONES CAOMPOS ZIP, NOMRE_ZONA, RUTA
CREATE TABLE DIRECCIONES (
ZIP INT NOT NULL,
NOMBRE_ZONA VARCHAR(8),
RUTA VARCHAR(50)
);
DESC DIRECCIONES;

# D) AGREGAR PK AL CAMPO ID EN VET.MASCOTAS , PERSONAS, DIRECCIONES

DESCRIBE VET.MASCOTAS;

ALTER TABLE VET.MASCOTAS
ADD PRIMARY KEY (ID);

ALTER TABLE VET.PERSONAS
ADD PRIMARY KEY (ID);

ALTER TABLE VET.DIRECCIONES
ADD PRIMARY KEY (ZIP);

DESC VET.PERSONAS;

# E). aGREGAR FK AL CAMNPO ZIPCODE EN PERONAS ZIP EN DIRECCIONES

ALTER TABLE VET.PERSONAS
ADD CONSTRAINT FK_ZIP_DIR
FOREIGN KEY (COD_ZIP) REFERENCES VET.DIRECCIONES(ZIP);

# F).  AGREGAR COLUMNA A EMNAIL EN VET.PERSONAS

ALTER TABLE PERSONAS
ADD COLUMN EMAIL VARCHAR(20);

#G AGREGAR UNIQUE CONSTRAINT A EMEAIL

ALTER TABLE PERSONAS
ADD CONSTRAINT U_EMAIL
UNIQUE(EMAIL);

# H CAMBIAR EL NOMBRE AL CAMPO NOMBRE EN MASCOTAS

ALTER TABLE MASCOTAS
RENAME COLUMN NOMBRE TO PRIMER_NOMBRE;

# I ) CAMBIAR EL TIPO DE DATO AL CAMPO RUTA EN DIRECCIONES

ALTER TABLE DIRECCIONES
MODIFY RUTA CHAR(12);





# Como agregar y quitar primary key a una tabla
## ALTER TABLE <NOMBRE_TABLA>
## ADD PRIMARY KEY (<NOMBRE_COLUMNA>)

## ALTER TABLE <NOMBRE_TABLE>
## DROP PRIMARY KEY;

# CREATE TABLE <NOMBRE_TABLE> (
# <NOMBRE_COLUMNA1> <TIPO_DATOS> NOT NULL,
# <NOMBRE_COLUMNA2> <TIPO_DATOS> NOT NULL,
# PRIMARY KEY (<NOMBRE COLUMNA>)
#);

### DESARROLLO ###

CREATE DATABASE GRUPOS;
USE GRUPOS;

CREATE TABLE ZONAS(
ID INT NOT NULL,
DIR_COD INT NOT NULL,
DIR VARCHAR(20),
NOMBRE VARCHAR(20),
PRIMARY KEY(ID)
);

DESC ZONAS;
ALTER TABLE ZONAS
DROP PRIMARY KEY;
DESC ZONAS;
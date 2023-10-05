CREATE DATABASE proyecto_pbi;
USE proyecto_pbi;
CREATE TABLE hechos_victimas (
    id VARCHAR(255),
    n_victimas INT,
    lugar_del_hecho VARCHAR(255),
    comuna INT,
    altura VARCHAR(255),
    participantes VARCHAR(255),
    calle VARCHAR(255),
    acusado VARCHAR(255),
    tipo_de_calle VARCHAR(255),
    hora VARCHAR(255),
    id_hecho VARCHAR(255),
    fecha VARCHAR(255),
    aaaa INT,
    mm INT,
    dd INT,
    rol VARCHAR(255),
    victima VARCHAR(255),
    sexo VARCHAR(255),
    edad INT,
    fecha_fallecimiento VARCHAR(255)
    );
   SELECT *
FROM hechos_victimas
LIMIT 10;
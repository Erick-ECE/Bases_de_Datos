-- Database: practica01

-- DROP DATABASE practica01;

CREATE DATABASE practica01
    WITH 
    OWNER = postgres
    ENCODING = 'UTF8'
    LC_COLLATE = 'es_MX.UTF-8'
    LC_CTYPE = 'es_MX.UTF-8'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1;

COMMENT ON DATABASE practica01
    IS 'first data base';

-- SCHEMA: casillas

-- DROP SCHEMA casillas ;

CREATE SCHEMA casillas
    AUTHORIZATION postgres;
-- Table: casillas.casillas

-- DROP TABLE casillas.casillas;

CREATE TABLE casillas.casillas
(
    seccion character varying COLLATE pg_catalog."default" NOT NULL,
    tipo_casilla char NOT NULL,
    aprobada boolean NOT NULL,
    id_estado integer,
    id_distrito integer,
    CONSTRAINT casillas_pkey PRIMARY KEY (seccion, tipo_casilla, aprobada),
    CONSTRAINT id_distrito FOREIGN KEY (id_distrito)
        REFERENCES geografico.distritos (id_distrito) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT id_estado FOREIGN KEY (id_estado)
        REFERENCES geografico.estado (id_estado) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE casillas.casillas
    OWNER to postgres;

-- SCHEMA: geografico

-- DROP SCHEMA geografico ;

CREATE SCHEMA geografico
    AUTHORIZATION postgres;

-- Table: geografico.distritos

-- DROP TABLE geografico.distritos;

CREATE TABLE geografico.distritos
(
    id_estado integer,
    id_distrito integer NOT NULL,
    nombre name,
    CONSTRAINT distritos_pkey PRIMARY KEY (id_distrito),
    CONSTRAINT distritos_id_estado_fkey FOREIGN KEY (id_estado)
        REFERENCES geografico.estado (id_estado) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE geografico.distritos
    OWNER to postgres;

-- Table: geografico.estado

-- DROP TABLE geografico.estado;

CREATE TABLE geografico.estado
(
    id_estado integer NOT NULL,
    nombre name,
    CONSTRAINT estado_pkey PRIMARY KEY (id_estado)
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE geografico.estado
    OWNER to postgres;

-- SCHEMA: partidos_politicos

-- DROP SCHEMA partidos_politicos ;

CREATE SCHEMA partidos_politicos
    AUTHORIZATION postgres;

-- Table: partidos_politicos.partidos

-- DROP TABLE partidos_politicos.partidos;

CREATE TABLE partidos_politicos.partidos
(
    id_partido integer NOT NULL,
    nombre name,
    siglas name,
    id_estado integer,
    id_distrito integer,
    CONSTRAINT partidos_pkey PRIMARY KEY (id_partido),
    CONSTRAINT id_distrito FOREIGN KEY (id_distrito)
        REFERENCES geografico.distritos (id_distrito) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT id_estado FOREIGN KEY (id_estado)
        REFERENCES geografico.estado (id_estado) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE partidos_politicos.partidos
    OWNER to postgres;

-- SCHEMA: representantes

-- DROP SCHEMA representantes ;

CREATE SCHEMA representantes
    AUTHORIZATION postgres;

-- Table: representantes."Asistencias "

-- DROP TABLE representantes."Asistencias ";

CREATE TABLE representantes."Asistencias "
(
)

WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE representantes."Asistencias "
    OWNER to postgres;

-- Table: representantes."Log_representantes_aprobados"

-- DROP TABLE representantes."Log_representantes_aprobados";

CREATE TABLE representantes."Log_representantes_aprobados"
(
)

WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE representantes."Log_representantes_aprobados"
    OWNER to postgres;

-- Table: representantes."Representantes_aprobados"

-- DROP TABLE representantes."Representantes_aprobados";

CREATE TABLE representantes."Representantes_aprobados"
(
)

WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE representantes."Representantes_aprobados"
    OWNER to postgres;

-- Table: representantes."Representantes_prelimnares"

-- DROP TABLE representantes."Representantes_prelimnares";

CREATE TABLE representantes."Representantes_prelimnares"
(
)

WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE representantes."Representantes_prelimnares"
    OWNER to postgres;


-- Table: representantes."Representantes_sustituciones"

-- DROP TABLE representantes."Representantes_sustituciones";

CREATE TABLE representantes."Representantes_sustituciones"
(
)

WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE representantes."Representantes_sustituciones"
    OWNER to postgres;
CREATE SCHEMA Geografico_Normalizado;

--DROP TABLE Geografico_Normalizado.Estados;   	
create table Geografico_Normalizado.Estados (
id_estado integer primary key, 
nombre varchar(50), 
abreviatura varchar(10)) ;
COMMENT ON TABLE Geografico_Normalizado.Estados  IS 'Captura|Tabla que contiene a los estados validos dentro de un pais.';
	COMMENT ON COLUMN Geografico_Normalizado.Estados.id_estado IS '|Identificador del estado.';
   	COMMENT ON COLUMN Geografico_Normalizado.Estados.nombre IS '|Este campo hace referencia al nombre asociado al identificador del estado';
    COMMENT ON COLUMN Geografico_Normalizado.Estados.abreviatura IS '|Este campo hace referencia al nombre de la abreviatura asociado al identificador del estado';
    
--DROP TABLE Geografico_Normalizado.Distritos_federales;   	
create table Geografico_Normalizado.Distritos_federales (
id_estado Integer  REFERENCES Geografico_Normalizado.Estados (id_estado), 
id_distrito_federal Integer , 
cabecera_distrital_federal varchar(50),
 PRIMARY KEY (id_estado, id_distrito_federal) );
 COMMENT ON TABLE Geografico_Normalizado.Distritos_federales  IS 'Captura|Tabla que contiene a los distritos federales  validos dentro de un pais.';
	COMMENT ON COLUMN Geografico_Normalizado.Distritos_federales.id_estado IS '|Identificador del estado.';
	COMMENT ON COLUMN Geografico_Normalizado.Distritos_federales.id_distrito_federal IS '|Identificador del distrito federal asociado a un estado.';
   	COMMENT ON COLUMN Geografico_Normalizado.Distritos_federales.cabecera_distrital_federal IS '|Este campo hace referencia al nombre asociado al identificador del distrito federal';
    
--DROP TABLE Geografico_Normalizado.Distritos_locales;   	
create table Geografico_Normalizado.Distritos_locales (
id_estado Integer  REFERENCES Geografico_Normalizado.Estados (id_estado), 
id_distrito_local Integer , 
cabecera_distrital_local varchar(50),
 PRIMARY KEY (id_estado, id_distrito_local) );
COMMENT ON TABLE Geografico_Normalizado.Distritos_locales  IS 'Captura|Tabla que contiene a los distritos locales  validos dentro de un pais.';
	COMMENT ON COLUMN Geografico_Normalizado.Distritos_locales.id_estado IS '|Identificador del estado.';
	COMMENT ON COLUMN Geografico_Normalizado.Distritos_locales.id_distrito_local IS '|Identificador del distrito local asociado a un estado.';
   	COMMENT ON COLUMN Geografico_Normalizado.Distritos_locales.cabecera_distrital_local IS '|Este campo hace referencia al nombre asociado al identificador del distrito local';

--DROP TABLE Geografico_Normalizado.Municipios;   	
create table Geografico_Normalizado.Municipios (
id_estado Integer  REFERENCES Geografico_Normalizado.Estados (id_estado), 
id_municipio Integer , 
nombre_municipio varchar(50),
 PRIMARY KEY (id_estado, id_municipio) );
COMMENT ON TABLE Geografico_Normalizado.Municipios  IS 'Captura|Tabla que contiene a los Municipio  validos dentro de un pais.';
	COMMENT ON COLUMN Geografico_Normalizado.Municipios.id_estado IS '|Identificador del estado.';
	COMMENT ON COLUMN Geografico_Normalizado.Municipios.id_municipio IS '|Identificador del Municipio asociado a un estado.';
   	COMMENT ON COLUMN Geografico_Normalizado.Municipios.nombre_municipio IS '|Este campo hace referencia al nombre asociado al identificador del Municipio';
    
--DROP TABLE Geografico_Normalizado.Secciones;   	
create table Geografico_Normalizado.Secciones (
id_estado Integer  REFERENCES Geografico_Normalizado.Estados (id_estado), 
id_distrito_federal Integer , 
id_distrito_local Integer , 
id_municipio Integer   ,
seccion Integer,
tipo  varchar(1),
  CONSTRAINT PK PRIMARY KEY (id_estado, id_distrito_federal, id_distrito_local, id_municipio, seccion) ,
  CONSTRAINT FKDistritosFederales FOREIGN KEY(id_estado, id_distrito_federal)  REFERENCES Geografico_Normalizado.Distritos_federales (id_estado, id_distrito_federal) ,
  CONSTRAINT FKDistritosLocales FOREIGN KEY(id_estado, id_distrito_local)  REFERENCES Geografico_Normalizado.Distritos_locales (id_estado, id_distrito_local) ,
  CONSTRAINT FKMunicipios FOREIGN KEY(id_estado, id_municipio)  REFERENCES Geografico_Normalizado.Municipios (id_estado, id_municipio)  );
COMMENT ON TABLE Geografico_Normalizado.Secciones  IS 'Captura|Tabla que contiene a los Municipio  validos dentro de un pais.';
	COMMENT ON COLUMN Geografico_Normalizado.Secciones.id_estado IS '|Identificador del estado.';
    COMMENT ON COLUMN Geografico_Normalizado.Secciones.id_distrito_federal IS '|Identificador del distrito federal asociado a un estado.';
    COMMENT ON COLUMN Geografico_Normalizado.Secciones.id_distrito_local IS '|Identificador del distrito local asociado a un estado.';
	COMMENT ON COLUMN Geografico_Normalizado.Secciones.id_municipio IS '|Identificador del Municipio asociado a un estado.';
   	COMMENT ON COLUMN Geografico_Normalizado.Secciones.seccion IS '| Numero de la seccion asociado a un estado, distrito federal , distrito local , municipio  ';
    COMMENT ON COLUMN Geografico_Normalizado.Secciones.tipo IS '| Tipo de lseccion ';
    


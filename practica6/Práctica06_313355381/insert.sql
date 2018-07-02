INSERT INTO geografico_normalizado.distritos_federales (id_estado,id_distrito_federal,cabecera_distrital_federal)
VALUES ('1','4','INVENTED CDF');

INSERT INTO geografico_normalizado.estados VALUES (33,'CIUDAD UNIVERSITARIA','CU');

INSERT INTO geografico_normalizado.municipios (id_estado, id_municipio) VALUES 
(33,0);

INSERT INTO geografico_normalizado.municipios VALUES
(33,1,'FACULTAD DE CIENCIAS');

INSERT INTO geografico_normalizado.municipios VALUES (33,2, DEFAULT);

INSERT INTO geografico_normalizado.municipios 
VALUES (33,3,'FACULTAD DE DERECHO');

INSERT INTO geografico_normalizado.municipios VALUES (33,4);

INSERT INTO geografico_normalizado.distritos_federales VALUES (33,0,default);

INSERT INTO geografico_normalizado.distritos_federales VALUES (33,1,'YELIZCALLI');

INSERT INTO geografico_normalizado.distritos_federales VALUES (33,2,'TLAHUIZCALPAN');
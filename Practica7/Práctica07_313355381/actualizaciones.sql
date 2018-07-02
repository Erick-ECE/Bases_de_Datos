SET search_path TO geografico_normalizado, public;

UPDATE secciones
SET tipo = 'U'
WHERE id_municipio= 7;

UPDATE secciones
SET tipo = 'R'
WHERE id_municipio= 4;
SET search_path TO geografico_normalizado, public;

DELETE FROM secciones USING estados
where secciones.id_estado != estados.id_estado ;

DELETE FROM distritos_federales
where distritos_federales.id_estado != '1'
returning distritos_federales.id_estado ;

DELETE FROM distritos_locales
where distritos_locales.id_estado != '1'
returning distritos_locales.id_estado ;

DELETE FROM municipios
where municipios.id_estado != '1'
returning municipios.id_estado ;

DELETE FROM estados
where estados.id_estado != '1'
returning estados.id_estado ;
-- 1.Obtener el nombre y la dirección de aquellas compañías discográficas que hayan
--  grabado todos los discos de algún intérpretes.
set search_path to industria_musical, public;
select n01.disquera, n01.direccion
  from (select disquera, direccion, nombreint, count(album) from disquera natural join disco group by disquera, direccion, nombreint) as n01,
       (select disquera, nombreint, count(album) from disco group by nombreint, disquera) as n02
  where n01.count = n02.count and n01.nombreint = n02.nombreint; 

-- 2.-Obtener para cada grupo con más de dos integrantes el nombre y el número de
--  componentes del grupo.
select nombreint, count(curp)
  from interprete natural join pertenece
  group by nombreint
    having count(curp) > 2; 
    
--3. Obtener para cada artista el nombre de sus albumes y las canciones de cada album  
select distinct nombre, album, titulo
	from  (esta natural join
           disco natural join
           interprete natural join
           pertenece natural join
           artista) as j,
           cancion
    where j.codcan = cancion.cod
    order by nombre; 

-- 4.Obtener para cada compositor la canción que aparece más veces en distintos álbumes.
select nombrec, titulo
  from
    compositor
      natural join
    (select curpc ,titulo, count(titulo) from cancion, esta where cancion.cod = esta.codcan group by titulo, curpc) as tc
  group by nombrec, count, titulo
  having count = MAX(count);
  
-- 5.Obtener para cada grupo los integrantes de este con el nombre y función en el grupo.
select nombreint, nombre, funcion
  from interprete natural join pertenece natural join artista;
  
--6.Obtener los Clubs que sean fanaticos de grupos que tengan al menos un integrante que
--  tenga la función de bajo.
select nombre, funcion
  from club natural join interprete natural join pertenece
  where funcion = 'Bajo'
  group by nombre, funcion
  having count(funcion) > 0; --6

--7.Se desea saber cuales son las funciones que desempeñan los artistas y cuantos hay por
--cada funcones dentro de la base de datos.
select funcion, count(funcion)
  from pertenece
  group by funcion; 
  
--8.Se desea saber para cada año cuantos intérpretes se crearon.
select cast(fechacreacion as varchar(4)), count(fechacreacion)
  from interprete
  group by fechacreacion
  order by fechacreacion 
  
  
--9.Para cada intérprete se desea saber cuantos años han pasado desde que se
-- consolidaron estos.
select nombreint, cast(cast(now() as varchar(4)) as integer) - cast(cast(fechacreacion as varchar(4)) as integer) as años
  from interprete; 

--10.Para cada disco obtener el total de canciones que tiene este y ademas agregar la
--duración de la canción más larga de cada disco.  
select album, count(codcan), MAX(duracion)
  from disco natural join esta, cancion
  where cod = codcan
  group by album;

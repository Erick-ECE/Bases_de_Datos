SET search_path TO industria_musical, public;

--1.Selecciona el nombre de los intérpretes que no sean de México.
SELECT nombreint FROM interprete
WHERE pais != 'México';

--2.Obtener el título de la canciones con más de 5 minutos de duración.
SELECT titulo FROM cancion
WHERE cast(LEFT(duracion, 2) as int) >= 5;

--3.Obtener la listade las distintas funciones que pueden realizar los artistas.
SELECT DISTINCT(funcion) FROM pertenece;

--4.lecciona el nombre y el lugar de origen de los clubes con más de 500 fans.
SELECT nombre, lugarorigen FROM club
WHERE numfans > 500;

--5.Obtener el nombre y el lugar de origen de cada club de fans de intérpretes de México asi
--  como el nombre del interprete que admiran
SELECT nombre, lugarorigen,nombreint FROM club
WHERE lugarorigen = 'México';

--6. Obtener el nombre de los discos que contienen alguna canción que dure más de 5 minutos.
--FALTA
SELECT DISTINCT(d.album) FROM disco d,esta,cancion sng
where cast(LEFT(duracion, 2) as int) >= 5 ;

--7.Obtener los nombres de las canciones que dan nombre al disco en el que aparecen.
SELECT titulo FROM cancion,disco
WHERE titulo = album;

--8.Obtener los nombres de las disqueras y direcciones de aquellas compañías disqueras
--  que han grabado algún disco que empiece con 'T'.
SELECT d.disquera, direccion 
FROM disquera d join disco b on d.disquera = b.disquera
WHERE album like 'T%';

--9.Obtener el nombre de los discos de los intérpretes registrados en el año 1996.
SELECT album 
FROM disco d join interprete i on d.nombreint = i.nombreint
WHERE fechacreacion = to_date('1996%', 'yyy');

--10.Obtener el nombre de las compañías discográficas que no han trabajado con grupos mexicanos.
Select DISTINCT(d.disquera)
From (disquera d join disco b on d.disquera=b.disquera) join interprete i on i.nombreint=b.nombreint
WHERE pais != 'México';

--11.Obtener el titulo de todas las canciones de los albunes de U2
select titulo
from (cancion as a join esta as b on a.cod = b.codcan ) join disco as c on c.album = b.album
where c.nombreint = 'U2' ;
--12.El dúo dinámico por fin se jubila; para sustituirlos se pretende hacer una selección sobre
--  todos los pares de artistas españoles distintos tales que el primero sea voz tulo  el segundo
--  guitarra. Obtener dicha selección.

--13.Obtener el nombre del club con mayor número de fans indicando ese número.

--14.Obtener el título de la canción de mayor duración indicando la duración.

--15.Obtener el género de los discos con mayor número de fans.

--16.Obtener el número de discos de cada intérprete.

--17.Obtener el número de canciones que ha grabado cada compañía discográfica y su dirección.

--18.Obtener los nombre de los artistas de grupos con clubes de fans de más de 500 personas y
--   que el grupo sea de Inglaterra.

--19.¿Cuántos discos hay?

--20.Obtener el nombre de los artistas que pertenezcan a un grupo de México.

--21.Obtener el décimo (Debe haber sólo 9 por encima de el) club con mayor número de fans
--   indicando este número).

--22.Obtener el nombre de los artistas que tengan la función de bajo en un único grupo y
--   que además este tenga más  de dos miembros.

--23.Indica el nombre del compositor que más canciones ha creado y el título de estas.

--24.Obtener el año en el que hubo mayor lanzamientos de discos.

Erick Enrique Castro Espinosa
313355381
------------------------------------------------------

Respuestas:

1. 1.-​ ​ ¿Es​ ​ posible​ ​ simular​ ​ la​ ​ acción​ ​ del​ ​ group​ ​ by​ ​ sin​ ​ hacer​ ​ uso​ ​ de​ ​ este?​

No se puede 
  
2.​ ¿Es​ ​ posible​ ​ construir​ ​ un​ ​ respaldo​ ​ de​ ​ datos​ ​ de​ ​ alguna​ ​ tabla​ ​ de​ ​ tu​ ​ BD​ ​ sin​ ​ sacar​ ​ las
información​ ​ en​ ​ un​ ​ archivo​ ​ .backup​ ​ o ​ ​ csv?​ ​ Sí​ ​ ​ se​ ​ puede​ ​ dar​ ​ un​ ​ ejemplo.
si 
ej.:

  set search_path to industria_musical, public;
  select 'insert into interprete values(' || fechacreacion || ',' || nombreint || ',' || pais || ')'
    from interprete;

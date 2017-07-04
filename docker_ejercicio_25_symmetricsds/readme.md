He creado un shellscript (run.sh) que te automatiza todo, simplemente ejecuta:

	./run.sh create

El script crea las imagenes necesarias y los contenedores. Y te dejara corriendo el contenedor
con el symmetricds lanzado con la configuracion del primer ejemplo de la pagina de symmetricds:

	https://www.symmetricds.org/doc/3.8/html/tutorials.html#_what_s_created

Puedes continuar ejecutando las pruebas SQL directamente desde ese punto, simplemente conectate
al contenedor abriendo un bash:

	docker container exec -it sym1 /bin/bash
	
Y para contectarte a la BD de corp-000:

	symmetricds/bin/dbsql --engine corp-000

O a cualquiera de las stores:

	symmetricds/bin/dbsql --engine store-001
	symmetricds/bin/dbsql --engine store-002

Mientras haces los ejercicios puedes tener otro terminal con viendo los logs:

	docker container exec -it sym1 tail -f /opt/symmetricds/logs/symmetric.log

Para limpiar todo cuando termines y liberar el espacio:

	./run.sh clean


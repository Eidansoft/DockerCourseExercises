Crear el volumen
	docker volume create --name testvol
Levanta dos contenedores con el volumen creado
	docker run -dit -v testvol:/unidad1 --name test1 ubuntu
	docker run -dit -v testvol:/unidad1 --name test2 ubuntu
Te conectas al volumen
	docker container exec -it test1 /bin/bash
Editas algo en en volumen
	echo "texto de prueba 1" > /unidad1/prueba
Y compruebas que eso queda presente en el otro contenedor, conectandote al otro y mirando el archivo
	docker container exec -it test2 /bin/bash
	cat /unidad1/prueba


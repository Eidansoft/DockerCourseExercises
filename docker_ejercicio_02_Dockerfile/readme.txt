Construimos la imagen
	docker build . -t test

Creamos el contenedor
	docker run -itd --name test test

Ejecutamos un comando en el contenedor creado
	docker container exec -it test java holamundo


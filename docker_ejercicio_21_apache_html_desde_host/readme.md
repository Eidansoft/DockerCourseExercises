Construye la imagen
	docker build -t my-apache2 .
Crea el contenedor y lo levanta en el puerto 80, compartiendo la carpeta local con el apache
	docker run -dit -p 80:80 -v $(pwd):/usr/local/apache2/htdocs/ --name my-apache my-apache2
Parar el contenedor
	docker container stop my-apache
Relevantar el contenedor
	docker container start my-apache
Conectarte a la maquina que tiene el apache corriendo
	docker container exec -it my-apache /bin/bash
Eliminar el contenedor
	docker rm my-apache


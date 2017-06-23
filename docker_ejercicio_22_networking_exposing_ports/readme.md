Creamos la imagen de los ubuntu con netcat

	docker build . -t netcat

Creamos la red

	docker network create -d bridge nettest

Creamos dos contenedores (necesitamos dos consolas) y los levantamos conectados a la red, ya que para que dos
contenedores se vean, hace falta que esten en la misma red, la comunicacion sera bidireccional

	docker run --net=nettest -it --name pctest1 netcat
	docker run --net=nettest -it --name pctest2 netcat

Ahora en el contenedor pctest1 hacemos

	nc -lp 8080

Y en el contenedor pctest2 hacemos

	nc pctest1 8080

A partir de ese punto lo que escribamos en una consola se mandara a la otra tras pulsar intro


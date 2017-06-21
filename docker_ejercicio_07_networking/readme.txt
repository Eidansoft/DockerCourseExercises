Creamos la red
	docker network create -d bridge nettest
Comprobamos las redes
	docker network ls
Para ver los detalles de que contenedores estan en cada red, puedes mirarlo en los detalles de cada red, p ej. para bridge
	docker network inspect bridge
	docker network inspect nettest
Creamos dos contenedores y los levantamos conectados a la red y linkados, ya que para que dos contenedores se vean, 
hacen falta ambas caracteristicas, que esten en la misma red y que esten linkados. El link lo hacemos en la segunda
maquina, pero la comunicacion sera bidireccional
	docker run --net=nettest -itd --name pctest1 ubuntu
	docker run --net=nettest --link=pctest1 -itd --name pctest2 ubuntu
Para conectar un contenedor a una red lo podemos hacer, por ejemplo a bridge que es la por defecto y no la ha asignado
a los contenedores cuando los creamos con otra por defecto
	docker network connect bridge pctest1
Podemos ver todas las redes a las que esta conectado un contenedor con
	docker container inspect pctest1
Si nos conectamos a un contenedor deberiamos poder ver al otro para ello nos conectamos, le instalamos el ping
y probamos, para ver la IP de la otra maquina tenemos que inspeccionar el container
	docker container exec -it pctest1 /bin/bash
	apt-get update
	apt-get install iputils-ping
	ping 172.18.0.3	


Para desconectar un contenedor de una red, p ej. para quitarlo de la por defecto (que es bridge si no se especifica)
	docker network disconnect bridge pctest1

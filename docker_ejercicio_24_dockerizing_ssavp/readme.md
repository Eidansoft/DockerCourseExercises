Construyo la imagen del AUTH teniendo un enlace simbolico al Dockerfile-auth
	ln -s Dockerfile-auth Dockerfile

Y creo la imagen
	docker build . -t wildfly

Instancio el contenedor con
	docker run -it -v $(pwd)/auth/wildfly/deployments:/deployments -v $(pwd)/auth/wildfly/configuration:/configuration --name authpc wildfly

Creo todo el sistema
	docker-compose up --build -d


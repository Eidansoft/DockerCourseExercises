Construir
	docker-compose up --build
Paramos con Ctrl+C

Lanzamos test
	docker-compose -f docker-compose.test.yml -p ci up -d
Miramos los logs de los test y veremos que la maquina test ha accedido al servidor web
	docker container logs ci_testing_1



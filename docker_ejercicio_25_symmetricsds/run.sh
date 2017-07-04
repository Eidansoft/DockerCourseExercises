#!/bin/bash

# Define environment variables to be consumed by docker-compose
export _ROOT_DIR=$(cd $(dirname $0) && pwd -P)

function createImages() {
	echo "[INFO] Creating images..."
	docker build ./sicpa-base -t sicpa/base
	docker build ./sicpa-java -t sicpa/java
	docker build ./sicpa-symmetricds -t sicpa/symmetricds
}

function startContainers() {
	echo "[INFO] Starting containers..."
	cleanArtefacts
	docker-compose up --build -d
}

function stopContainers() {
	docker rm sym1 -f
	docker rm mysql -f
}

function cleanImages() {
	docker rmi sicpa/symmetricds
	docker rmi sicpa/wildfly
	docker rmi sicpa/java
	# docker rmi sicpa/base
}

function cleanArtefacts() {
	[ -d "auth/temp_data" ] && rm -rf auth/temp_data
}

function cleanAll() {
	stopContainers
	cleanImages
	cleanArtefacts
}

case "$1" in 
	create) createImages
		startContainers
		;; 
	start) startContainers
		;;
	stop) stopContainers
		;; 
	clean) cleanAll
		;; 
	*)  
		echo "`basename ${0}` usage: [create] | [start] | [stop] | [clean]"
		echo "    create: Create images, containers and launch the containers"
		echo "    start: Create and launch containers"
		echo "    stop: Stop and delete containers"
		echo "    clean: Stop and delete containers, and remove images"
		exit 1 # Command to come out of the program with status 1
		;; 
esac 
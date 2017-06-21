# Base image
FROM java:7

# author
LABEL maintainer=eidansoft@gmail.com

# Copia de archivos (a partir de la ruta del DorkerFile)
COPY holamundo.java /usr/app/

# Variables de entorno
#ENV MYSQL_ROOT_PASSWORD 1234

# Establecer el workspace
WORKDIR /usr/app

# Ejecutar comandos en la construccion de la imagen
#RUN apt-get update
RUN javac holamundo.java

# Ejecutar comandos al finalizar la construccion
#CMD ["javac", "holamundo.java"]

# Ejecutar comando cadavez que se instancia el contenedor
ENTRYPOINT ["java", "holamundo"]
#ENTRYPOINT ["javac", "holamundo.java"]
#ENTRYPOINT ["echo", "este es el texto holamundo.java"]

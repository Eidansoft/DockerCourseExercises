# Base image
FROM java:7

# author
LABEL maintainer=eidansoft@gmail.com

# Copia de archivos (a partir de la ruta del DorkerFile)
COPY holamundo.java /usr/app/

# Establecer el workspace
WORKDIR /usr/app

RUN javac holamundo.java
# Ejecutar comandos al finalizar la construccion
#CMD ["javac", "holamundo.java"]


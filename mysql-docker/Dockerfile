# docker build -t mysql-container .
# docker run -d --name mysql-container -p 3306:3306 mysql-container


# Utiliza una imagen base de MySQL
FROM mysql:latest

# Variables de entorno para configurar la base de datos
ENV MYSQL_ROOT_PASSWORD=Your!Passw0rd
ENV MYSQL_DATABASE=test_db
ENV MYSQL_USER=mi_usuario
ENV MYSQL_PASSWORD=Your!Passw0rd

ENV ACCEPT_EULA=Y
ENV SA_PASSWORD=Your!Passw0rd
# Puerto que se expondrá para conectarse a la base de datos
EXPOSE 3306

# Opcional: Copia archivos SQL para inicializar la base de datos
# COPY ./scripts/ /docker-entrypoint-initdb.d/

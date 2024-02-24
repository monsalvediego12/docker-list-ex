# docker build -t postgres-container .
# docker run -d --name postgres-container -p 5432:5432 postgres-container

# Utiliza una imagen base de PostgreSQL
FROM postgres:latest

# Variables de entorno para configurar la base de datos
ENV POSTGRES_USER=mi_usuario
ENV POSTGRES_PASSWORD=Your!Passw0rd
ENV POSTGRES_DB=test_db

# Puerto que se expondrá para conectarse a la base de datos
EXPOSE 5432

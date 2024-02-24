# docker build -t sqlserver-container .
# docker run -d --name sqlserver-container -p 1433:1433 sqlserver-container

# Utiliza una imagen base de Microsoft SQL Server para Linux
FROM mcr.microsoft.com/mssql/server:latest

# Variables de entorno para configurar SQL Server
ENV ACCEPT_EULA=Y
# USERNAME=sa
ENV SA_PASSWORD=Your!Passw0rd
ENV MSSQL_PID=Express
ENV MSSQL_TCP_PORT=1433

# Puerto que se expondrá para conectarse a SQL Server
EXPOSE 1433

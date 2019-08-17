# SonarQube based on PostgresSQL DB

A Docker Compose file for [SonarQube](https://www.sonarqube.org/) based on the [PostgresSQL](https://www.postgresql.org/) database.

Docker Images are from [Docker Hub](https://hub.docker.com):
* [SonarQube](https://hub.docker.com/_/sonarqube)
* [PostgresSQL](https://hub.docker.com/_/postgres)  

## Environment Variables

The compose file needs to environment variables

* MY_POSTGRES_USER
* MY_POSTGRES_PASSWORD

The environment variables can be stored in a `.env` - file (on same level like docker-compose.yml).  
*HINT* Do not put that .env file under version control!

Example .env-file (list of Key=Val, comments can be done with a starting #)
```
MY_POSTGRES_USER=sonar
MY_POSTGRES_PASSWORD=S3cr3tPassw0rd
```

## Start 
### Start with default values (folder name will be the project name)
```
docker-compose up -d
```
### Start with a specific project name
```
docker-compose --project-name sonar up -d
```
### Start with a .env file with absolut path
```
docker-compose -f /configs/SonarQubeOnPostgres/.env up -d
```

## Stop
```
docker-compose down
```

## CleanUp
```
docker-compose down
docker network rm sonarqubewithpostgres_sonarqube_net
docker volume rm sonarqubewithpostgres_pg_data
docker volume rm sonarqubewithpostgres_pg_root
docker volume rm sonarqubewithpostgres_sq_conf
docker volume rm sonarqubewithpostgres_sq_data
docker volume rm sonarqubewithpostgres_sq_extensions
docker volume rm sonarqubewithpostgres_sq_plugins
```

## Copy files from Docker-Container to Host
To copy files from container to host use `docker cp`. 
```
docker cp <ContainerID>:<PathInsideContainer> <PathOnHost>
```
Container name (or ID) `sonarqube_app`  
PathInsideContainer `/opt/sonarqube/extensions`  
PathOnHost `./tmp`
```
docker cp sonarqube_app:/opt/sonarqube/extensions ./tmp
```

## Copy files from Host to Docker-Container
```
docker cp ./tmp sonarqube_app:/opt/sonarqube/extensions
```

# Links
* [stackoverflow 43074679](https://stackoverflow.com/questions/43074679/how-am-i-supposed-to-access-a-named-volume-from-the-host)
* [stackoverflow 39496564](https://stackoverflow.com/questions/39496564/docker-volume-custom-mount-point)
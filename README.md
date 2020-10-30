# Dockerfiles

Various Dockerfiles and Docker-Compose files.  

For "playground", in ci-cd-automation, DevOps topics and IaaS providers.  

Most of the images are published to [n13.org on Docker Hub](https://cloud.docker.com/u/n13org/repository/list).

## Hints

A Dockerfile can have an entrypoint file. The last command inside the `entrypoint.sh` file can be `exec "$@"`to execute the CMD command after the endpoint is done.

## Docker Compose

The folder `_compose` contains Docker-Compose examples, each folder is a project.

### Docker Compose projects
* [SonarQubeWithPostgres](./_compose/SonarQubeWithPostgres)

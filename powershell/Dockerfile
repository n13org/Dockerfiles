FROM mcr.microsoft.com/powershell:alpine-3.8

LABEL MAINTAINER="Nicolas Karg <docker@n13.org>"

# Mount the workspace inside the PowerShell container
VOLUME /ws

# docker build . --tag n13org/powershell:latest
# docker run --rm -it -v D:\n13.org\Dockerfiles\powershell\ws\:/ws --name ps1 n13org/powershell
# docker cp D:\n13.org\Dockerfiles\powershell\ ps1:/ws
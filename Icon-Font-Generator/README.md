# Icon-Font-Generator

This docker image (`alpine linux` and `nodejs`) is a wrapper for the npm package [icon-font-generator](https://www.npmjs.com/package/icon-font-generator). The idea is to create from `SVG` images a web font, which can be used in HTML.

This project is part of a [collection](https://github.com/n13org/Dockerfiles) of different Dockerfiles.

The working directory for the container is `/home/work`. It has to be defined as a `VOLUME` during `docker run`. The entrypoint of the docker container can handle parameters. The source folder of the `SVGs` is `./assets/svg/`, please drop all files to that folder before run the container.

|ID| Name|Default|
|---|---|---|
|1|font name|fnt-svg-webfont|
|2|output folder|./assets/fonts|
|3|html path|./_layouts|
|4|css path|./_sass|

## Build and Push

Build the image `n13org/icon-font-generator` from the Dockerfile

```shell
docker build . --file Dockerfile --tag n13org/icon-font-generator
```

Push the image to [Docker Hub](https://hub.docker.com/orgs/n13org/repositories)

```shell
docker push n13org/icon-font-generator:latest
```

## Usage

Run docker container on a `Windows Command Line`

```cmd
docker run -it --rm -v%cd%:/home/work n13org/icon-font-generator
```

Run docker container on a `Windows Powershell`

```powershell
docker run -it --rm -v${PWD}:/home/work n13org/icon-font-generator
```

Run docker container on a `Linux Shell`

```shell
docker run -it --rm -v$(pwd):/home/work n13org/icon-font-generator
```

Run docker container on a `Linux Shell` and overwrite the default parameter

```shell
docker run -it --rm -v$(pwd):/home/work n13org/icon-font-generator "webfont" "./fonts" "./html" "./css"
```

# Intro

## Docker 

Build the docker image

```sh
docker build -t n13org/mermaid-cli .
```

Push the docker image

```sh
docker push n13org/mermaid-cli
```

Run the docker container

```sh
docker run --rm -it -v $PWD:/data n13org/mermaid-cli
```

Run the docker container, and **overwrite** the `entrypoint`

```sh
docker run --rm -it -v $PWD:/data --entrypoint "/bin/bash" n13org/mermaid-cli
```

## Links

* [Project mermaid](https://mermaid-js.github.io/mermaid/)
* [Sourcecode on GitHub](https://github.com/mermaid-js/mermaid)
* [Live Editor](https://mermaid-js.github.io/mermaid-live-editor)

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

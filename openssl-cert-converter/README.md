# OpenSSL Certificate Converter

Convert a self-signed certificate for a domain / url together with the CA (certifcate authority) to pem-files. To use the pem-files for HTTPS, SSL conection in your development environment.

Create a `certs` folder and drop your certificates inside the folder. We need the self-signed CA and the server certificates. The `./certs` folder will be mapped to the `/tmp` inside the docker container.

When you run the docker container as described below three `pem` files will be created in the `./certs` folder.

- `my-selfsigned-CA.crt` -> `rootCA.pem`
- `www.company.local.pfx` -> `serverKey.pem`
- `www.company.local.crt` -> `server.pem`

Build the docker image

```powershell
docker build -t n13org/openssl-cert-converter .
```

Push the docker image to [docker hub](https://hub.docker.com/repository/docker/n13org/openssl-cert-converter) by using the registry prefix `docker.io/` this can be ommit if only one registry is in place.

```powershell
docker push docker.io/n13org/openssl-cert-converter
```

Run the docker container with any name, e.g. `openssl-converter-job` or ommit the name. The `/tmp` folder and the three source certificates needs to be mapped inside the container as volumes.

> The `interactive` (`-it`) mode is needed because you will be maybe asked for the passphrase of the `pfx` file!

**Powershell** Syntax, change current working directory `${PWD}` to `$(pwd)` and line wraps `` ` `` to `\` if needed

```powershell
docker run --rm -it --name openssl-converter-job `
    -v ${PWD}/certs:/tmp `
    -v ${PWD}/certs/my-selfsigned-CA.crt:/tmp/CA.crt `
    -v ${PWD}/certs/www.company.local.pfx:/tmp/server.pfx `
    -v ${PWD}/certs/www.company.local.crt:/tmp/server.crt `
    n13org/openssl-cert-converter
```

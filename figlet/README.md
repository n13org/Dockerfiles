# Figlet

[Figlet](http://www.figlet.org) is a ASCII Art Generator. Here we integrate it in a docker environment to use it from command line / terminal.  

* [Font Examples](http://www.figlet.org/examples.html)
* [Manual](http://www.figlet.org/figlet-man.html)

## Examples

Example of text `n13.org`

```txt
       _ _____
 _ __ / |___ /  ___  _ __ __ _
| '_ \| | |_ \ / _ \| '__/ _` |
| | | | |___) | (_) | | | (_| |
|_| |_|_|____(_)___/|_|  \__, |
                         |___/
```

Example of text `KargWare`

```txt
 _  __             __        __
| |/ /__ _ _ __ __ \ \      / /_ _ _ __ ___
| ' // _` | '__/ _` \ \ /\ / / _` | '__/ _ \
| . \ (_| | | | (_| |\ V  V / (_| | | |  __/
|_|\_\__,_|_|  \__, | \_/\_/ \__,_|_|  \___|
               |___/
```

## How-To Use

Create (build) docker image

```cmd
cd figlet
docker build -t n13org/figlet .
```

Use docker image as container to show the version number

```cmd
docker run --rm -it n13org/figlet -v
```

Use docker image as container with default font and the text `n13.org`

```cmd
docker run --rm -it n13org/figlet n13.org
```

Use docker image as container with font `acrobatic` and the text `n13.org`

```cmd
docker run --rm -it n13org/figlet -f acrobatic n13.org
```

Use docker image as container with font `acrobatic` and the text `n13.org` and **write to file** `n13org.txt`

```cmd
docker run --rm -it n13org/figlet -f acrobatic n13.org > n13org.txt
```

Use docker image as container with font `acrobatic` and long text `n13.org` with max width (e.g. 1000). To keep the output on a **single line**.

```cmd
docker run --rm -it n13org/figlet -w 1000 -f acrobatic n13.org
```

Change the default **entrypoint** to e.g. the shell, and use a local folder `output` inside the container. Leave the container with `exit`

```cmd
docker run --rm -it -v $PWD/output:/out --entrypoint "/bin/ash" n13org/figlet
```

The default working directory would be `/out`. The `figlet` command is available over the PATH, so type `figlet` to start the tool, leave the tool with Ctrl+C.

## Links

* [Ubuntu Wiki: Ascii Art Tools](https://wiki.ubuntuusers.de/ASCII-Art/)
* [Blog: Serverless Ascii Art](https://jmkhael.io/create-a-serverless-ascii-banner-with-faas/)

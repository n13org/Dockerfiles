# MKISOFS - Create CD/DVD Image driven by Docker

Create docker image `n13org/mkisofs`.

```cmd
docker build --tag n13org/mkisofs --file D:\n13.org\Dockerfiles\mkisofs\Dockerfile .
```

Use the docker image `n13org/mkisofs` as container to create an ISO. The `.\in` folder contains the files and folders which should be on root of the ISO. The `.\out` folder is where the ISO should be stored. Create symbolic links with `mklink` to link folders inside the `.\in` folder. On Linux Terminal replace `%cd%` with `$PWD`. For Powershell replace `%cd%` with `${PWD}`.

```cmd
mkdir in out
mklink /J .\in\devops D:\n13.org\scripts\DevOps
mklink /J .\in\provisioning D:\n13.org\scripts\IaC\_provisioning
mklink /J .\in\scripts D:\n13.org\scripts\IaC\_scripts
docker run -it --rm -v "%cd%\in:/input" -v "%cd%\out:/output" n13org/mkisofs mkisofs -V "Packer2nd" -J -R -input-charset iso8859-1 -o /output/packer.iso /input
REM del /f /s /q .\in
REM rmdir /S /Q .\in
```

# MKISOFS - Create CD/DVD Image driven by Docker

Create docker image `n13org/mkisofs`.

```cmd
cd mkisofs
docker build --tag n13org/mkisofs .
```

Use the docker image `n13org/mkisofs` as container to create an ISO. The `.\in` folder contains the files and folders which should be on root of the ISO. The `.\out` folder is where the ISO should be stored. Create symbolic links to link folders inside the `.\in` folder.  

To create **symbolic links** on Windows you can use `mklink` [MS docs mklink](https://docs.microsoft.com/de-de/windows-server/administration/windows-commands/mklink). On Mac and Linux you can use the comamnd `ln` [manpage of ln](https://linux.die.net/man/1/ln).  

On Linux Terminal replace `%cd%` with `$PWD`. For Powershell replace `%cd%` with `${PWD}`.

```cmd
mkdir in out
mklink /J .\in\devops D:\n13.org\scripts\DevOps
mklink /J .\in\provisioning D:\n13.org\scripts\IaC\_provisioning
mklink /J .\in\scripts D:\n13.org\scripts\IaC\_scripts
docker run -it --rm -v "%cd%\in:/input" -v "%cd%\out:/output" n13org/mkisofs mkisofs -V "MyVolumeName" -J -R -input-charset iso8859-1 -o /output/MyNewIso.iso /input
REM del /f /s /q .\in
REM rmdir /S /Q .\in
```

From the [manpage](https://linux.die.net/man/8/mkisofs) of mkisofs:

|Option|Description|
|---|---|
|-V volid|Specifies the volume ID (volume name or label) to be written into the master block. There is space on the disc for 32 characters of information. This parameter can also be set in the file .mkisofsrc with VOLI=id. If specified in both places, the command line version is used. Note that if you assign a volume ID, this is the name that will be used as the mount point used by the Solaris volume management system and the name that is assigned to the disc on a Microsoft Win32 or Apple Mac platform.|
|-J|Generate Joliet directory records in addition to regular iso9660 file names. This is primarily useful when the discs are to be used on Windows-NT or Windows-95 machines. The Joliet filenames are specified in Unicode and each path component can be up to 64 Unicode characters long. Note that Joliet is no standard - CD's that use only Joliet extensions but no standard Rock Ridge extensions may usually only be used on Microsoft Win32 systems. Furthermore, the fact that the filenames are limited to 64 characters and the fact that Joliet uses the UTF-16 coding for Unicode characters causes interoperability problems.|
|-R|Generate SUSP and RR records using the Rock Ridge protocol to further describe the files on the iso9660 filesystem.|
|-input-charset|Defines the local character set you are using on your host machine. Any character set conversions that take place will use this character set as the staring point. The default input character sets are cp437 on DOS based systems and iso8859-1 on all other systems. If the -J option is given, then the Unicode equivalents of the input character set will be used in the Joliet directory. Using the -jcharset option is the same as using the -input-charset and -J options.|
|-o filename|is the name of the file to which the iso9660 filesystem image should be written. This can be a disk file, a tape drive, or it can correspond directly to the device name of the optical disc writer. If not specified, stdout is used. Note that the output can also be a block special device for a regular disk drive, in which case the disk partition can be mounted and examined to ensure that the premastering was done correctly.|


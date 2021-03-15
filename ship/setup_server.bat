@echo off

if exist forge-installer.jar (
	echo forge-installer.jar is present, which indicates the pack is already installed.
	echo Delete forge-installer.jar if you intended to install or if the previous installation stopped halfway.
	pause
	exit
)

mkdir mods
echo Downloading modpack files...
powershell -Command "Import-Csv mods.csv -Header 'Source', 'Destination' | Start-BitsTransfer"

echo Installing server...
java -jar forge-installer.jar --installServer

pause
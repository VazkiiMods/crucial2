if [[ -f forge-installer.jar ]]; then
    echo forge-installer.jar is present, which indicates the pack is already installed.
	echo Delete forge-installer.jar if you intended to install or if the previous installation stopped halfway.
	read -n 1 -s -r -p "Press any key to continue..."
	exit 0
fi

mkdir mods
echo Downloading modpack files...
cat mods.csv | sed 's/\(.*\),\(.*\)\r?/-c "wget -c \1 -O \2"/g' | xargs -n2 bash

echo Installing server...
java -jar forge-installer.jar --installServer

read -n 1 -s -r -p "Press any key to continue..."
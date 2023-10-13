===================================================
                  CRUCIAL 2 SERVER                 
===================================================

Installation Instructions
	- Ensure you have Java 8 installed
		Newer versions won't work!!
		If you're unsure what version you have, open
		a Command Prompt and run 
				java -version
		If it does not say the version is "1.8.0_(number)"
		you have to uninstall Java and install Java 8

	- Run the server setup script for your OS
		WINDOWS: Run setup_server.bat
		MAC/LINUX: Run setup_server.sh

	- Wait for the pack to download

	- Run the server via the forge-1.16.5...jar
		WARNING: DO NOT Run forge-installer.jar or
		minecraft_server.1.16.5.jar 

	- Accept the Minecraft EULA

	- Do NOT change the world type in the server settings
		If using a provider that does, the one you want
		is quark:realistic

	- Run the server again

	- Enjoy!

===================================================
Updating the Server
	- Download the latest Crucial 2 Server Pack from CurseForge

	- Stop your server AND BACK UP YOUR INSTANCE(!!!)

	- Delete the following folders inside your server installation
		config
		defaultconfigs
		openloader
		patchouli_books
		scripts

	- Delete forge-installer.jar
		forge-installer.jar being there stops the installation script
		as a fallback so it knows to not download everything twice

	- Run the Installation Process again

	- Add back any mods you might've added originally

	- Enjoy!

===================================================
Troubleshooting

If nothing happens when you run the server, try the following steps:
	- Open the folder where your server is installed
	- Click the address bar and type cmd
		- Then press enter
	- This will open a terminal, type java -d64 -Xmx3G -jar forge-1.16.5-36.2.39.jar
		- Then press enter
		- This will likely show an error, refer to the following:

Unrecognized option: -d64
Error: Could not create the Java Virtual Machine.
Error: A fatal exception has occurred. Program will exit.
	OR
Error: This Java instance does not support a 64-bit JVM.
Please install the desired version.	

SOLUTION: Install Java 8 64 Bit here: 
https://adoptium.net/temurin/releases/?version=8 

For other less common errors, try the Violet Moon discord:
discord.gg/vm

===================================================
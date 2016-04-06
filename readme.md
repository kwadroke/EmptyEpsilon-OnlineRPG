# EmptyEpsilon Online RPG

This is a collection of scripts for creating an Internet based Role Play Game. There is no victory and player ships can come & go. Servers should be reset for updates and universe resets to recreate destroyed objects occassionally.

## How to use
Copy files in the subfolders to the matching subfolders in EmptyEpsilon, except the _eerpg_ folder. That should be copied to your existing webserver.

You will need to enable the httpserver to create new ships as the scenario does not create these. 

Idle player ships will be removed from game after _X_ minutes


## Running a Dedicated Server

Create a dedicated server using the following command for your Operating System:

**Linux** (You can create a shell script or a Desktop icon for this)
```
./EmptyEpsilon httpserver=8080 dedicated=1
```

**Windows** (You can create a shortcut or a batch file for this)
```
EmptyEpsilon.exe httpserver=8080 dedicated=1
```

## Other setup

You can use an existing web server or if you have python installed, run the following command from the command line in the _eerpg_ folder
```
python -m SimpleHTTPServer
```
You can connect to this server by visiting http://serverip:8000

### Important Note for server

You will want to firewall off the port used for httpserver above (recommended default is 8080) to keep other people from messing with your game. The included server scripts will communicate to the httpserver over localhost (127.0.0.1).


## Spawning a ship

Visit http://serverip/eerpg/ (or http://serverip:8000 if using the python instructions above) in your web browser and enter a ship name & choose a ship type. 

Connect your clients to the _serverip_ using EmptyEpsilon. A new ship should be created using the name you entered in the previous step. 


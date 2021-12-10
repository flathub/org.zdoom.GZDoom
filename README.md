# GZDoom Flatpak edition

## Installation of game-data

* Copy any commercial iwad into the folder `~/.var/app/org.zdoom.GZDoom/.config/gzdoom/`
* Optionally, configure the `~/.var/app/org.zdoom.GZDoom/.config/gzdoom/gzdoom.ini` file to load other directories

## Run with custom wads
Just as with the stand-alone GZDoom, you can pass commands through using the command line. If you want to play custom wads, you can add them to a sub-directory of `/gzdoom/` and then you can directly access then from the terminal:

```
flatpak run org.zdoom.GZDoom -file ~/.var/app/org.zdoom.GZDoom/.config/gzdoom/pwads/PL2.WAD
```

```
cd ~/.var/app/org.zdoom.GZDoom/.config/gzdoom/pwads/
flatpak run org.zdoom.GZDoom -file ./PL2.WAD
```

For more info, see:

* https://zdoom.org/wiki/Command_line_parameters
* https://zdoom.org/wiki/Installation_and_execution_of_ZDoom

## Accessing files
If you want to access wads in different locations, you might have to adjust the [Flatpak sandboxing permissions](http://docs.flatpak.org/en/latest/sandbox-permissions.html). 

### GUI
You can use Flatseal to visually manage your permissions:
https://flathub.org/apps/details/com.github.tchx84.Flatseal

### Terminal

You can easily do that like this:

```
flatpak override org.zdoom.GZDoom --filesystem=/OTHER/LOCATION/WITH/WADS --user
```
 

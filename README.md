# About 

 * This is an embry for a wild west themed top-down shooter for the [Solarus] game engine.

 * It requires Solarus 1.5.x.

 * It consists in part of materials under various free and open-source and public licenses, and in part of unlicensed materials under fair use.


# Play

## Windows
 
 1. Install the latest Solarus 1.5.x engine from the [Solarus download page].

 2. Download the [Source code zip].

 3. Extract the `data` folder from the Source code zip and put it in the directory where you installed Solarus.
 
 4. Run solarus-run.exe


## Ubuntu

 1. Install the latest Solarus 1.5.x engine from the [Solarus download page].

 2. Download the [Source code zip].

 3. Extract the contents of the zip into your home directory.

 4. Run `solarus-run $HOME/western-master`


## OS X

 1. Install the latest Solarus 1.5.x engine from the [Solarus download page].

 2. Download and extract the [Source code zip].

 3. Copy the Solarus-run application from the Solarus bundle to the Source code directory.
 
 4. Run the Solarus-run application.


# Install

## Ubuntu

 1. Install build dependencies

        $ sudo apt-get install cmake

 2. Generate the "data.solarus" archive containing all data files of the quest:

        $ cmake .
        $ make

 3. Install the "western" launch script and the "data.solarus" archive:

        $ sudo make install

 4. Play

        $ western


[Solarus download page]: http://www.solarus-games.org/engine/download/.
[Solarus]: http://solarus-games.org/
[Source code zip]: https://github.com/Legofarmen/western/archive/master.zip

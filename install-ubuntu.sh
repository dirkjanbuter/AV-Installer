#!/bin/bash
sudo dpkg --add-architecture i386 
sudo apt update
sudo apt install libc6:i386 libncurses5:i386 libstdc++6:i386 
sudo apt install multiarch-support 
sudo apt install git make libpng-dev libswscale-dev libavcodec-dev libavformat-dev libsdl2-dev libpng-dev:i386 libswscale-dev:i386 libavcodec-dev:i386 libavformat-dev:i386 libsdl2-dev:i386
mkdir build
git clone https://github.com/dirkjanbuter/AV-Viewer.git
git clone https://github.com/dirkjanbuter/AV-CGI.git
git clone https://github.com/dirkjanbuter/AV-Filter-EDOF.git
git clone https://github.com/dirkjanbuter/AV-Filter-Player.git
git clone https://github.com/dirkjanbuter/AV-Filter-Sepia.git 
git clone https://github.com/dirkjanbuter/AV-Filter-Status.git
git clone https://github.com/dirkjanbuter/AV-Filter-Clock.git
git clone https://github.com/dirkjanbuter/AV-Filter-Blocks.git
git clone https://github.com/dirkjanbuter/AV-Filter-3colors.git
git clone https://github.com/dirkjanbuter/AV-Filter-WireframeCube.git
cd AV-Viewer
make
cd ..
cd AV-CGI
make
cd ..
cd AV-Filter-EDOF
make
cd ..
cd AV-Filter-Player
make
cd ..
cd AV-Filter-Sepia
make
cd ..
cd AV-Filter-Status
make
cd ..
cd AV-Filter-Clock
make
cd ..
cd AV-Filter-Blocks
make
cd ..
cd AV-Filter-3colors
make
cd ..
cd AV-Filter-WireframeCube
make
cd ..
cd build

#!/bin/bash
sudo apt -y update
sudo apt -y install git make libpng16-dev libswscale-dev libavcodec-dev libavformat-dev libsdl2-dev libpng16-dev:i386 libswscale-dev:i386 libavcodec-dev:i386 libavformat-dev:i386 libsdl2-dev:i386
mkdir build
git clone https://github.com/dirkjanbuter/AV-Viewer.git
git clone https://github.com/dirkjanbuter/AV-CGI.git
git clone https://github.com/dirkjanbuter/AV-Filter-EDOF.git
git clone https://github.com/dirkjanbuter/AV-Filter-Player.git
git clone https://github.com/dirkjanbuter/AV-Filter-Sepia.git 
git clone https://github.com/dirkjanbuter/AV-Filter-Status.git
git clone https://github.com/dirkjanbuter/AV-Filter-Clock.git
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
cd build

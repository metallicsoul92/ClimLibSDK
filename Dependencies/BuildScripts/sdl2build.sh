#!/bin/bash
#SDL2 Build Automation
cd ../Source


	echo "Cloning from Hg"

	hg clone http://hg.libsdl.org/SDL

	


	echo "Moving into SDL Dependency Directory"
	cd SDL 
	

	echo "Creating build directory"
	mkdir build
	cd build
	
	
	
	
if [ "$(uname)" == "Darwin" ]; then
echo "Configuring SDL2 for OSX"
	
elif [ "$(uname -s)" == "Linux" ]; then
    # Build to Linux User
	
	echo "Making SDL2 Lib Directory"
	cd ../../../
	cd Platforms/Linux
	mkdir SDL2
	echo "Moving to SDL2 Lib Directory"
	cp ../../Source/SDL/build/ SDL2
	cd SDL2

elif [ "$(expr substr $(uname -s) 1 10)" == "MINGW32_NT" ]; then
    # Do something under Windows NT platform
	
	echo "Configuring SDL2 for Windows"
	echo "Cmake "
	cmake ../ -G "Visual Studio 12"
	devenv "SDL2.sln" /build Debug /project "ALL_BUILD.vcxproj"
	devenv "SDL2.sln" /deploy Debug /project "ALL_BUILD.vcxproj"
	echo "Making SDL2 Lib Directory"
	cd ../../../
	cd Platforms/Windows
	mkdir SDL2
	echo "Moving to SDL2 Lib Directory"
	cp -rf ../../Source/SDL/build/* SDL2/
	rm -rf ../../Source/SDL/build
fi




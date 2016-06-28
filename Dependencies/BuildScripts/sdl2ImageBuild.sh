#!/bin/bash
#SDL2 Build Automation
cd ../Source


	echo "Cloning from Hg"

	hg clone https://hg.libsdl.org/SDL_image

	


	echo "Moving into SDL_Image Dependency Directory"
	cd SDL_Image	

	

	
	
	
if [ "$(uname)" == "Darwin" ]; then

echo "Configuring SDL2 for OSX"
	
elif [ "$(uname -s)" == "Linux" ]; then
    # Build to Linux User
	echo "Building for Linux"
	mkdir build
	cd build
	../configure
	make
	sudo make install
	
elif [ "$(expr substr $(uname -s) 1 10)" == "MINGW32_NT" ]; then
    # Do something under Windows NT platform

	echo "Creating build directory"
	mkdir build
	cd build
	
	make -C ../
	make install -C ../
	
	

fi




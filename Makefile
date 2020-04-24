#a simple make file
#this file tells GNU make how to create the executable "the_world"
#this line declares that all targets for make will require "the_world"
all: mswp_exe

#this line dictates that "the_world" relies on the four listed object files
mswp_exe: ms_main.o ms.o
	g++ ms_main.o ms.o -o mswp_exe

#this line gives a way of building main.o which relies on main.cpp
ms_main.o: ms_main.cpp
	g++ -c ms_main.cpp

#etc etc
ms.o: ms.cpp
	g++ -c ms.cpp

#this gives a recipe for removing files ending in .o and the_world
clean:
	rm *.o mswp_exe

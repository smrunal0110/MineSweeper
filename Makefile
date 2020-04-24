all: mswp_exe

mswp_exe: ms_main.o ms.o
	g++ ms_main.o ms.o -o mswp_exe

ms_main.o: ms_main.cpp
	g++ -c ms_main.cpp

ms.o: ms.cpp
	g++ -c ms.cpp

clean:
	rm *.o mswp_exe

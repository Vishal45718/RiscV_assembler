# -*- Makefile -*-

#target : dependencies
# action

#linking all the object files which have been used to create the assembley to hex converting file
#generates the main executable
all : main.o Iconvert.o Rconvert.o Sconvert.o Bconvert.o Jconvert.o Uconvert.o sort_find.o commalgo.o
	g++ -o riscv_asm main.o Iconvert.o Rconvert.o Sconvert.o Bconvert.o sort_find.o Jconvert.o Uconvert.o commalgo.o
#makes main.cpp's object file
main.o : main.cpp sort_find.hh struct.hh
	g++ -c main.cpp
#makes Iconvert.cpp's object file
Iconvert.o : Iconvert.cpp commalgo.hh
	g++ -c Iconvert.cpp
#makes Rconvert.cpp's object file
Rconvert.o : Rconvert.cpp commalgo.hh
	g++ -c Rconvert.cpp
#makes Sconvert.cpp's object file
Sconvert.o : Sconvert.cpp commalgo.hh
	g++ -c Sconvert.cpp
#makes Bconvert.cpp's object file
Bconvert.o : Bconvert.cpp commalgo.hh
	g++ -c Bconvert.cpp
#makes Uconvert.cpp's object file
Uconvert.o : Uconvert.cpp commalgo.hh
	g++ -c Uconvert.cpp
#makes Jconvert.cpp's object file
Jconvert.o : Jconvert.cpp commalgo.hh
	g++ -c Jconvert.cpp
#makes sort_find.cpp's object file
sort_find.o : sort_find.cpp Iconvert.hh Rconvert.hh Sconvert.hh Bconvert.hh Jconvert.hh Uconvert.hh sort_find.hh
	g++ -c sort_find.cpp
#makes commalgo.cpp's object file
commalgo.o : commalgo.cpp struct.hh
	g++ -c commalgo.cpp

#removes all the object files and the main executable
clear :
	rm *.o riscv_asm

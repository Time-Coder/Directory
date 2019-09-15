all: main.exe

main.exe: main.o directory.o
	g++ -std=c++11 *.o -o main.exe

main.o: main.cpp directory.h
	g++ -std=c++11 -c main.cpp

directory.o: directory.cpp directory.h
	g++ -std=c++11 -c directory.cpp

run: main.exe
	./main.exe

clean:
	del *.o >nul 2>&1
	del *.exe >nul 2>&1

clear:
	del *.o >nul 2>&1
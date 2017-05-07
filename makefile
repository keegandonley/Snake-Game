screen.x:  screen.o getChar.o board.o
	g++ -ggdb -o screen.x screen.o getChar.o board.o -lcurses -ltermcap

screen.o: screen.cpp board.cpp board.hpp
	g++ -std=c++11 -c -ggdb screen.cpp -o screen.o

getChar.o: getChar.cpp getChar.hpp
	gcc -c -ggdb getChar.cpp -o getChar.o

board.o: board.cpp board.hpp
	gcc -c -ggdb board.cpp -o board.o

clean:
	/bin/rm -f screen.x screen.o getChar.o *~

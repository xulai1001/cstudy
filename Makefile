cppflags=-fpermissive -std=c++11 -O2

default: all

all: hammer

hammer: *.h hammer_test.cpp
#	g++ $(cppflags) hammer_test.cpp -S
	g++ $(cppflags) hammer_test.cpp -o hammer_test
	
clean: 
	rm -f *.out *.s measure search

.PHONY: clean

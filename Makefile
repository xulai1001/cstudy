cppflags=-fpermissive -std=c++11 -O2

default: all

all: hammer measure

hammer: *.h hammer_test.cpp
#	g++ $(cppflags) hammer_test.cpp -S
	g++ $(cppflags) hammer_test.cpp -o hammer

measure: *.h measure_new.cpp
	g++ $(cppflags) measure_new.cpp -o measure

clean: 
	rm -f *.out *.s measure hammer

.PHONY: clean

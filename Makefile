cppflags=-fpermissive -std=c++11 -O2

default: all

all: measure search

measure: timing.h measure.cpp
	g++ -S $(cppflags) measure.cpp
	g++ $(cppflags) measure.cpp -o measure
	
search: timing.h search.cpp
	g++ $(cppflags) search.cpp -o search

clean: 
	rm -f *.out *.s measure search

.PHONY: clean

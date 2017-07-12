cppflags=-fpermissive -std=c++11 -O2

default: measure

measure: measure.cpp timing.h
	g++ -S $(cppflags) measure.cpp
	g++ $(cppflags) measure.cpp -o measure
    


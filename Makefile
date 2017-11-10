cppflags=-fpermissive -std=c++11 -O2

default: all

all: hammer measure latency dram

hammer: *.h hammer_test.cpp
#	g++ $(cppflags) hammer_test.cpp -S
	g++ $(cppflags) hammer_test.cpp -o hammer

measure: *.h measure_new.cpp
	g++ $(cppflags) measure_new.cpp -o measure
	
latency: *.h measure_latency.cpp
	g++ $(cppflags) measure_latency.cpp -o latency
	
dram: *.h dram.cpp
	g++ $(cppflags) dram.cpp -o dram
clean: 
	rm -f *.out *.s measure hammer latency dram

.PHONY: clean

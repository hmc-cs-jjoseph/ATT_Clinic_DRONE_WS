GXX=g++ -std=c++11

test: test.cpp TunerDevice.cpp
	$(GXX) test.cpp -o test TunerDevice.o libhdhomerun/libhdhomerun.so

device: TunerDevice.cpp TunerDevice.h
	$(GXX) -c TunerDevice.cpp

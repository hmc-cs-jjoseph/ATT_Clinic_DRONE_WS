GXX=g++ -std=c++11

test: test.cpp TunerDevice.cpp
	make device
	$(GXX) test.cpp -o test TunerDevice.o libhdhomerun/libhdhomerun.so

device: TunerDevice.cpp TunerDevice.h
	$(GXX) -c TunerDevice.cpp

PRJ = $(shell basename $(CURDIR))

HALIDE = ~/Halide-14.0.0-x86-64-linux

all: $(PRJ)

$(PRJ): *.cpp
	g++ $(file).cpp -g -I $(HALIDE)/include -I $(HALIDE)/share/Halide/tools -L $(HALIDE)/lib -lHalide `libpng-config --cflags --ldflags` -ljpeg -lpthread -ldl -o $(PRJ) -std=c++17

run:
	LD_LIBRARY_PATH=$(HALIDE)/lib ./$(PRJ)
	
.PHONY: clean

clean:
	echo "Limpando.."
	-@rm -f $(PRJ) *.o *~
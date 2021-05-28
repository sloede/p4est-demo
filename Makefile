p4est_prefix := $(shell pwd)/p4est
inc_dir = $(p4est_prefix)/include
lib_dir = $(p4est_prefix)/lib
bin_dir = $(p4est_prefix)/bin
p4est_lib = $(lib_dir)/libp4est.so

all: demo

demo:
	gcc -I$(inc_dir) -L$(lib_dir) -Wl,-rpath,$(lib_dir) demo.c -o demo -lp4est

clean:
	rm -f demo
	rm -f demo.exe
	rm -f demo.o

.PHONY: demo

p4est_prefix := $(shell pwd)/p4est
inc_dir = $(p4est_prefix)/include
lib_dir = $(p4est_prefix)/lib
p4est_lib = $(lib_dir)/libp4est.so

all: demo

demo:
	gcc -I$(inc_dir) -Wl,-rpath=$(lib_dir) demo.c -o demo $(p4est_lib)

clean:
	rm -f demo

.PHONY: demo

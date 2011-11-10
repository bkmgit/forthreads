#CC = icc
#CC = gcc
CC = clang
#FC = ifort
FC = gfortran
#CFLAGS = -fPIC
CFLAGS = -fPIC -Wimplicit-function-declaration
FFLAGS = -fPIC -frecursive
DEBUG = -g
#CDEBUG = $(DEBUG)  -I/usr/include/x86_64-linux-gnu/
CDEBUG = $(DEBUG)  
FDEBUG = $(DEBUG)

export

.PHONY: all clean test

all: forthread

forthread:
	$(MAKE) -C src


test:
	$(MAKE) -C test

clean:
	$(MAKE) -C src $@
	$(MAKE) -C test clean

#!/bin/bash

build() {
	. backends/openssl.sh
	cd openssl
	git checkout OpenSSL_1_1_0h
	./config no-asm
	make clean
	make
}

eval $@

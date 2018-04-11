#!/bin/bash

build() {
	. backends/openssl.sh
	cd openssl
	git checkout OpenSSL_1_1_0h
	./config no-asm
	make clean
	make
}

verify() {
	cd openssl
	LD_LIBRARY_PATH=. ./apps/openssl verify -verbose -x509_strict -CAfile ../$1 -CApath /tmp/ ../$2
}

eval $@

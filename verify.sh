#!/bin/bash

for cacert in cacerts/*.pem
do
	for cert in certs/*.pem
	do
		if bash backends/$BACKEND.sh verify $cacert $cert; then
			echo "[OK] $BACKEND $cacert $cert"
		else
			echo "[ERR] $BACKEND $cacert $cert"
			exit -1
		fi
	done
done


# libssl cacert.pem Automated Test Suite

Test specific cacert.pem versions with different versions of libssl.
Inspired by https://github.com/rmccue/Requests/pull/212 and all related issues.

## backends

A backend is just a shell script that compiles a specific backend (OpenSSL, LibreSSL, etc.)

## cacerts

CA bundles that need testing.

## certs 

Various certificates, bad ones, good ones.

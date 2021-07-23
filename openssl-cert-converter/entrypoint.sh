#!/bin/sh
set -e

openssl x509 -inform DER -in 'CA.crt' -out 'rootCA.pem'
openssl pkcs12 -in 'server.pfx' -nocerts -nodes -out 'serverkey.pem'
openssl x509 -inform DER -in 'server.crt' -out 'server.pem'

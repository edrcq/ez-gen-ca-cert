#!/bin/bash

echo "Generating Private Key for Cert:"
openssl genrsa -out cert/cert.key 2048

echo "Create Signing Request for Cert"
openssl req -new -key cert/cert.key -out cert/cert.csr -config openssl.server.cnf

echo "Signing Cert with CA"
openssl x509 -req -in cert/cert.csr -CA ca/ca.pem -CAkey ca/ca.key -CAcreateserial -out cert/cert.crt -days 102400 -sha256 -extfile openssl.server.cnf -extensions server_cert

echo "Prepare to output one PEM file if needed"
cat cert/cert.crt > cert/cert.pem
cat cert/cert.key >> cert/cert.pem

echo "Job finished"

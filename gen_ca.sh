#!/bin/bash

echo "Start generating a big CA Private Key..."
# I comment to keep the same key. That's long to generate
openssl genrsa -out ca/ca.key 8192
echo "Key OK. Generating Certificate..."
openssl req -x509 -new -nodes -key ca/ca.key -sha256 -days 102400 -out ca/ca.pem -config openssl.ca.cnf
echo "Job finished."
# openssl x509 -req -in client/client.csr -CA ca/ca.pem -CAkey ca/ca.key -CAcreateserial -out client/client.crt -days 500 -sha256 -extfile openssl.client.cnf -extensions client_cert

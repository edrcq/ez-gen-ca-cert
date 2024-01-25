# Gen CA & Certs

## Usage

### Generate the CA

```sh
./gen_ca.sh
```

### Generate Cert

```sh
./gen_cert.sh
```

## Infos

What files are going to be produced
```
- ca/ca.key (private key of the CA)
- ca/ca.pem (CA certificate)
- ca/ca.srl (not useful)

- cert/cert.key (private key of the certificate)
- cert/cert.crt (certificate)
- cert/cert.csr (not useful, signing request for the CA)
- cert/cert.pem (the private key + the certificate in one file, not always useful)
```


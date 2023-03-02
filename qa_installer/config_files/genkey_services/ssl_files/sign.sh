#!/bin/sh
##
##  sign.sh -- Sign a SSL Certificate Request (CSR)
##  Copyright (c) 1998-1999 Ralf S. Engelschall, All Rights Reserved. 
##

#   argument line handling
CSR=$1
if [ $# -ne 1 ]; then
  echo "Usage: sign.sign <whatever>.csr"; exit 1
fi
if [ ! -f $CSR ]; then
  echo "CSR not found: $CSR"; exit 1
fi
case $CSR in
  *.csr ) CERT="`echo $CSR | sed -e 's/\.csr/.crt/'`" ;;
  * ) CERT="$CSR.crt" ;;
esac

#   make sure environment exists
if [ ! -d ca.db.certs ]; then
  mkdir ca.db.certs
fi
if [ ! -f ca.db.serial ]; then
  echo '01' >ca.db.serial
fi
if [ ! -f ca.db.index ]; then
  cp /dev/null ca.db.index
fi

#   create an own SSLeay config
cat >ca.config <<EOT
[ ca ]
default_ca	= CA_own
[ CA_own ]
dir	= /root/ssl
certs	= /root/ssl/certs
new_certs_dir	= /root/ssl/ca.db.certs
database	= /root/ssl/ca.db.index
serial		= /root/ssl/ca.db.serial
RANDFILE	= /root/ssl/ca.db.rand
certificate	= /root/ssl/certs/ca.crt
private_key	= /root/ssl/private/ca.key
default_days	= 365
default_crl_days	= 30
default_md	= md5
preserve	= no
policy	= policy_anything
[ policy_anything ]
countryName	= optional
stateOrProvinceName	= optional
localityName	= optional
organizationName	= optional
organizationalUnitName	= optional
#commonName	= supplied
emailAddress	= optional
EOT

#  sign the certificate
echo "CA signing: $CSR -> $CERT:"
openssl ca -config ca.config -key w3r@nd!PiT0uS -out $CERT -infiles $CSR 
echo "CA verifying: $CERT <-> CA cert"
openssl verify -CAfile /root/ssl/certs/ca.crt $CERT 

#  cleanup after SSLeay 
rm -f ca.config
rm -f ca.db.serial.old
rm -f ca.db.index.old

#  die gracefully
exit 0

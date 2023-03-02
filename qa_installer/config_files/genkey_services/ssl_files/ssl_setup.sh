#!/bin/sh	
#Temporarily use a pregenerated keystore.
	# cp server.keystore /usr/share/apache-tomcat-8.5.4/
SSLFiles=/Spire_Base_Installer_v2.0_01_2021/SSLFiles
#PASSWORDS=/Spire_Base_Installer_v2.0_01_2021/Passwords
	cd /root/ssl
	echo "=====> Use w3r@nd!PiT0uS as main passphrase and keystore passphrase"
	echo " "
	openssl genrsa -des3 -out server.key -passout pass:w3r@nd!PiT0uS 1024
	openssl rsa -in server.key -out server.key.unsecure -passin pass:w3r@nd!PiT0uS
	#openssl req -new -key server.key -passin pass:w3r@nd!PiT0uS -subj '/C=MZ/ST=DarEsSalaam Bay/L=DarEsSalaam/O=GenKey/OU=Spire/CN=localhost.localdomain/emailAddress=info@genkey.com' -out server.csr
	openssl req -new -key server.key -passin pass:w3r@nd!PiT0uS -subj '/C=KY/ST=Nairobi/L=Nairobi/O=FE/OU=FE/CN=localhost.localdomain/emailAddress=info@genkey.com' -out server.csr
	openssl genrsa -des3 -out ca.key -passout pass:w3r@nd!PiT0uS 1024
	openssl req -new -x509 -days 365 -key ca.key -passin pass:w3r@nd!PiT0uS -subj '/C=GH/ST=East Legon/L=Accra/O=GenKey/OU=GenKey/CN=localhost.localdomain/emailAddress=info@genkey.com' -out ca.crt 
	#openssl req -new -x509 -days 365 -key ca.key -passin pass:w3r@nd!PiT0uS -subj '/C=MZ/ST=DarEsSalaam Bay/L=DarEsSalaam/O=GenKey/OU=Spire/CN=localhost.localdomain/emailAddress=info@genkey.com' -out ca.crt 
	mkdir -p /root/ssl/certs
	mkdir -p /root/ssl/private
	cp /root/ssl/ca.crt /root/ssl/certs
	cp /root/ssl/ca.key /root/ssl/private
	echo "=====> Answer 'y' when promted."
	echo " "
	cat /root/ssl/pass1 | /root/ssl/sign.sh /root/ssl/server.csr
	echo "=====> Joining cert and key. "
	echo " "
	openssl pkcs12 -export -in server.crt -inkey server.key -passin pass:w3r@nd!PiT0uS -passout pass:w3r@nd!PiT0uS -out server.p12 -name Spire -CAfile ca.crt -caname root
	echo "=====> Importing PKCS12 into Java Keystore"
	echo " "
	cat /root/ssl/pass2 | keytool -importkeystore -destkeystore server.keystore -srckeystore server.p12 -srcstoretype PKCS12 -alias Spire
	echo "=====> Done setting up SSL"
	cd -

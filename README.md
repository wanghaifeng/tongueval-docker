# tongueval-docker
Docker images/Dockerfile for Tongueval project

There are several packages will be added to the images:
* Postgresql
* Tomcat
* JDK 8

# Using pg_dump to dump data from local DEV machine. --The dumped sql doesn't included with the repository.
# Generated SSL key file by using 'letsencrypt', reference: https://melo.myds.me/wordpress/lets-encrypt-for-tomcat-7-on-ds/
## {code} $ cp -L /etc/letsencrypt/live/yourDomain/fullchain.pem /remember/this/path/
$ cp -L /etc/letsencrypt/live/yourDomain/privkey.pem /remember/this/path/{code}
## openssl pkcs12 -export -in fullchain.pem -inkey privkey.pem -out fullchain_and_key.p12 -name tomcat
## keytool -importkeystore -deststorepass yourJKSpass -destkeypass youKeyPass -destkeystore MyDSKeyStore.jks -srckeystore fullchain_and_key.p12 -srcstoretype PKCS12 -srcstorepass yourPKCS12pass -alias tomcat

# Run docker build
# Run docker with "-d -p IP:443:443"

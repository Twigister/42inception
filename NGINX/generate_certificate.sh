# NOTE: this generates a non encrypted certificate, OK in the case of this project, but not for production purposes
openssl genpkey -algorithm RSA -out nginx.key
openssl req -new -key nginx.key -out nginx.csr
openssl x509 -req -days 365 -in nginx.csr -signkey nginx.key -out nginx.crt


FROM	debian:buster

RUN	echo "deb http://deb.debian.org/debian buster main" > /etc/apt/souces.list && \
	echo "deb http://security.debian.org/debian-security buster/updates main" >> /etc/apt/sources.list && \
	apt-get update -y && \
	apt-get install -y nginx openssl ca-certificates && \
	rm -rf /var/lib/apt/lists/*

# RUN	apt-get update -y && apt-get install -y nginx open-ssl ca-certificates && rm -rf /var/lib/apt/lists/*

# COPY	./default_conf	/etc/nginx/sites-available/default
COPY	./nginx.conf	/etc/nginx/nginx.conf
COPY	./nginx.crt	/etc/nginx/ssl/nginx.crt
COPY	./nginx.key	/etc/nginx/ssl/nginx.key
COPY	./html/*.html	/usr/share/nginx/html/

EXPOSE	443

ENTRYPOINT	["nginx", "-g", "daemon off;"]


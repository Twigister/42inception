sudo docker stop nginx-tls
sudo docker rm nginx-tls
sudo docker build -t nginx-tls .
sudo docker run -d -p 443:443 --name nginx-tls nginx-tls
sudo docker ps -a
sudo docker logs nginx-tls

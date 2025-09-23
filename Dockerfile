FROM ubuntu:24.04
RUN apt-get update 
RUN apt-get install -y nginx
COPY . /var/www/html
CMD service nginx start && tail -f /var/log/nginx/error.log



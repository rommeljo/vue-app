FROM ubuntu:25.04
RUN apt-get update
RUN apt-get install -y nginx
COPY . /var/www/html/
CMD service nginx start && tail -F /var/log/nginx/error.log                                                                                                                 1.6s



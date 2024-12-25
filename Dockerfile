FROM ubuntu:latest
RUN apt update && apt install -y apache2 git
WORKDIR /var/www/html
RUN git clone https://github.com/gabrielecirulli/2048.git
RUN cp -rvf 2048/* .
RUN rm -rf 2048
CMD ["apache2ctl", "-D", "FOREGROUND"]
EXPOSE 80

FROM ubuntu
ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt-get install -y apache2
EXPOSE 80
COPY mypage.html /var/www/html/index.html
CMD ["/usr/sbin/apache2ctl","-DFOREGROUND"]

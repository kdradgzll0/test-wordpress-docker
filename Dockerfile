FROM ubuntu:22.04

RUN apt-get update && \
    apt-get install -y wget lsb-release gnupg2 tzdata && \
    ln -fs /usr/share/zoneinfo/Europe/Istanbul /etc/localtime && \
    dpkg-reconfigure -f noninteractive tzdata && \
    apt-get install -y php libapache2-mod-php php-mysql apache2 && \
    echo "ServerName localhost" >> /etc/apache2/apache2.conf

RUN wget -O latest.tar.gz https://wordpress.org/latest.tar.gz && \
    tar -xzvf latest.tar.gz && \
    mv wordpress/* /var/www/html/ && \
    chown -R www-data:www-data /var/www/html && \
    chmod -R 755 /var/www/html && \
    rm -rf latest.tar.gz wordpress
RUN rm -rf /var/www/html/index.html

CMD ["apache2ctl", "-D", "FOREGROUND"]

EXPOSE 80

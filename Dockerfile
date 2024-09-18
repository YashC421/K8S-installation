FROM ubuntu:18.04
RUN apt-get update
RUN apt-get install -y apache2
RUN apt-get install -y apache2-utils
RUN cd /var/www/html
RUN echo "HI " > /var/www/html/index.html
RUN service apache2 start
EXPOSE 80
CMD ["apache2ctl", "-D","FOREGROUND"]

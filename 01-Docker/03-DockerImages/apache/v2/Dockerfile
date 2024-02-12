## Base Images 
FROM ubuntu

## Update the APT Repo
RUN apt-get update 

## Install Apache Packages
RUN apt-get install apache2 -y 

## Deploy Custom Web Page
COPY index.html /var/www/html/info.html 

## Bring up the Apache App/ Service 
CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]

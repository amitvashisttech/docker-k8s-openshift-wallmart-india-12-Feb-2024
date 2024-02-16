FROM registry.access.redhat.com/ubi8:8.0

RUN dnf -y module enable nginx:1.20
RUN dnf -y -q --setopt=tsflags=nodocs --setopt=skip_missing_names_on_install=False install nginx
RUN dnf -y -q clean all

ADD index.html /usr/share/nginx/html

ADD nginxconf.sed /tmp/
RUN sed -i -f /tmp/nginxconf.sed /etc/nginx/nginx.conf

RUN touch /run/nginx.pid \
  && chgrp -R 0 /var/log/nginx /run/nginx.pid \
  && chmod -R g+rwx /var/log/nginx /run/nginx.pid

EXPOSE 8080
USER 1001

CMD nginx -g "daemon off;"

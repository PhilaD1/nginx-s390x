FROM nginx:latest

COPY ./non-root.nginx.conf /etc/nginx/nginx.conf
COPY ./non-root.conf.d.nginx.conf /etc/nginx/conf.d/default.conf

RUN chgrp -R root /var/cache/nginx /var/run /var/log/nginx && \
    chmod -R 770 /var/cache/nginx /var/run /var/log/nginx

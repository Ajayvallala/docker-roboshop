FROM nginx:1.24
RUN rm -rf /usr/share/nginx/html/index.html
RUN rm -rf /etc/nginx/nginx.conf
ADD static/ /usr/share/nginx/html/
ADD nginx.conf /etc/nginx/
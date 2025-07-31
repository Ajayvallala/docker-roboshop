FROM nginx:1.24
RUN rm -rf /usr/share/nginx/html/*
COPY static/ /usr/share/nginx/html/
COPY nginx.conf /etc/nginx/
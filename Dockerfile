FROM docker.1ms.run/library/nginx:stable-alpine
COPY html/ /usr/share/nginx/html/
EXPOSE  80

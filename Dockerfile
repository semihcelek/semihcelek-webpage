FROM nginx:alpine

COPY /public /usr/share/nginx/html

EXPOSE 8080:80
FROM klakegg/hugo:0.74.3-alpine AS Builder

COPY . /site

WORKDIR /site

RUN hugo -D


FROM nginx:alpine

COPY --from=Builder /site/public /usr/share/nginx/html

# COPY ./conf/default.conf /etc/nginx/conf.d/default.conf

WORKDIR /var/www/site

EXPOSE 80

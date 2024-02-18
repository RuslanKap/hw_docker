FROM alpine:latest
RUN apk update && \
    apk upgrade && \
    apk add nginx
RUN mkdir -p /var/www/html
COPY index.html /var/www/html/
COPY custom.conf /etc/nginx/http.d/
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]


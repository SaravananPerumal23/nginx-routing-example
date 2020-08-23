FROM bitnami/nginx:1.16.1
MAINTAINER Saravanan Perumal "saravananperumalit@gmail.com"

COPY nginx.conf /opt/bitnami/nginx/conf/nginx.conf
COPY index.html /opt/bitnami/nginx/html/index.html

COPY help/web/index.html /opt/bitnami/nginx/html/help/web/index.html
COPY help/web/online/index.html /opt/bitnami/nginx/html/help/web/online/index.html

# expose both the HTTP (80) and HTTPS (443) ports
EXPOSE 8080

CMD ["nginx", "-g", "daemon off;"]

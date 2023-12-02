FROM centos:centos7

RUN yum -y install epel-release && \
    yum -y install nginx 

COPY ./html/* /usr/share/nginx/html/index.html

RUN chmod 777 /usr/share/nginx/html/index.html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]


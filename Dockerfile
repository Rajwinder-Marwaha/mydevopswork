FROM centos:7.7.1908

MAINTAINER "rajwindermarwaha@outlook.com Rajwinder Marwaha"

RUN yum update -y

RUN yum install epel-release -y

RUN yum install nginx wget net-tools bind-utils unzip  -y

RUN yum clean all 

COPY index.html  /usr/share/nginx/html

EXPOSE 80

EXPOSE 443

CMD ["nginx","-g","daemon off;"]


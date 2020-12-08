# Start writing your Dockerfile easily
FROM centos:latest

RUN install update -y httpd \
    zip \   
    unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page247/kindle.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip kindle.zip
RUN c- -rvf markups-kindle/* .
RUN rm -rf __MACOSX markups-kindle kindle.zip
CMD ["/usr/sbin/httpd", "-D" "FORGROUND"] 
EXPOSE 80
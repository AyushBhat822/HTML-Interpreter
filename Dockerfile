FROM ubuntu
RUN apt-get update
RUN apt-get install -y
RUN apt install  net-tools -y
RUN apt-get install -y nginx > output.txt
COPY htmlInterpreter.html  /var/www/html/
COPY goku.jpg  /var/www/html/
CMD ["/usr/sbin/nginx","-g","daemon off;"]

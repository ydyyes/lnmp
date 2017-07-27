From       centos:latest
MAINTAINER ydyyes <ydyyes@163.com>

RUN \
	yum install -y php && \
	yum install -y nginx && \
	yum install -y vim
#Copy ./conf /usr/local/nginx/conf

#添加脚本
ADD ./start.sh /start.sh
RUN chmod 755 /start.sh

#启动脚本
CMD /start.sh && tail -f

#Expose ports
EXPOSE 3306
EXPOSE 80
EXPOSE 22






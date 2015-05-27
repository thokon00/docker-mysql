#
# (c) 2015 by linuxIT König OG
# standard mysql-server installation for CentOS 6
#

FROM centos:centos6
MAINTAINER Thomas König <thomas.koenig@linuxit.at>

RUN yum -y update && yum -y install mysql-server mysql && yum clean all

ADD ./start.sh /start.sh

RUN chmod 755 /start.sh

EXPOSE 3306

CMD ["/bin/bash", "/start.sh"]

#
# Create a docker container with Oracle
# Instructions from http://www.tecmint.com/oracle-database-11g-release-2-installation-in-linux/
#

FROM xita/oracle2

RUN echo "`/sbin/ifconfig eth0 | grep 'inet addr' | cut -d: -f2 | awk '{print $1 }'` $HOSTNAME oracle" > /etc/hosts

RUN /etc/init.d/network restart

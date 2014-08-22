#
# Create a docker container with Oracle
# Instructions from http://www.tecmint.com/oracle-database-11g-release-2-installation-in-linux/
#

FROM xita/oracle2

# RUN echo "`/sbin/ifconfig eth0 | grep 'inet addr' | cut -d: -f2 | awk '{print $1 }'` $HOSTNAME oracle" > /etc/hosts

# RUN /etc/init.d/network restart

# Oracle User Settings

RUN echo foobar | passwd oracle --stdin

ADD 90-nproc.conf /etc/security/limits.d/90-nproc.conf

# setup Oracle user stuff

ADD oracle_bash_profile /home/oracle/.bash_profile
RUN chown oracle:oinstall /home/oracle/.bash_profile

# Install Oracle
RUN mkdir -p /u01/app/oracle/product/11.2.0/dbhome_1
RUN chown -R oracle:oinstall /u01
RUN chmod -R 775 /u01



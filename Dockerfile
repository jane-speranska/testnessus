FROM ubuntu
MAINTAINER nessus-docker cristiano.corrado@gmail.com
EXPOSE 8834
ADD  Nessus-8.2.2-debian6_amd64.deb /
RUN dpkg -i Nessus-8.2.2-debian6_amd64.deb
RUN /opt/nessus/sbin/nessuscli managed link --key=45bae761ca005361c95a736841d3fc9ba708b3c6c7ad38217437f4a0d1200e4d --cloud --name=docker-nessus-scanner-Jane
CMD /opt/nessus/sbin/nessusd

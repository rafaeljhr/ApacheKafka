FROM openjdk:8
RUN cd /opt && curl -OL http://archive.apache.org/dist/zookeeper/zookeeper-3.4.6/zookeeper-3.4.6.tar.gz && tar -zxvf zookeeper-3.4.6.tar.gz && rm zookeeper-3.4.6.tar.gz

WORKDIR /opt
COPY zoo.cfg /opt/zookeeper-3.4.6/conf
COPY start.sh /opt
CMD ["./start.sh"]



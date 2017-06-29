# Base image
FROM sicpa/base

# set workspace
WORKDIR /opt

# copy JDK
COPY jdk-8u131-linux-x64.tar.gz /opt/

# Uncompress JDK
RUN tar -zxvf jdk-8u131-linux-x64.tar.gz

# set environment variables
ENV JAVA_HOME /opt/jdk1.8.0_131
ENV PATH $JAVA_HOME/bin:$PATH

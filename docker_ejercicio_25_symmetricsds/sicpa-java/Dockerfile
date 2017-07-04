# Base image
FROM sicpa/base

# set workspace
WORKDIR /opt

# copy JDK
COPY jdk-8u131-linux-x64.tar.gz /opt/

# Uncompress JDK
RUN tar -zxvf jdk-8u131-linux-x64.tar.gz && \
	ln -s /opt/jdk1.8.0_131 /opt/jdk

# set environment variables
ENV JAVA_HOME /opt/jdk
ENV PATH $JAVA_HOME/bin:$PATH

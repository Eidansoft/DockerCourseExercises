# Base image
FROM sicpa/java

# set workspace
WORKDIR /opt

# copy Wildfly
COPY wildfly-9.0.2.Final.tar.gz /opt/

VOLUME /deployments
VOLUME /configuration

# Uncompress Wildfly
RUN tar -zxvf wildfly-9.0.2.Final.tar.gz && \
	rm -rf wildfly-9.0.2.Final/standalone/deployments && \
	ln -s /deployments wildfly-9.0.2.Final/standalone/deployments && \
	mv wildfly-9.0.2.Final/standalone/configuration/standalone-full.xml /configuration/ && \
	ln -s /configuration/standalone-full.xml wildfly-9.0.2.Final/standalone/configuration/standalone-full.xml && \
	ln -s /configuration/log wildfly-9.0.2.Final/standalone/log

ENTRYPOINT ["/opt/wildfly-9.0.2.Final/bin/standalone.sh", "-c", "standalone-full.xml"]
# Base image
FROM sicpa/java

# set workspace
WORKDIR /opt

# copy Wildfly
COPY symmetric-server-3.8.26.zip /opt/

# Uncompress Wildfly
RUN unzip symmetric-server-3.8.26.zip && \
	ln -s /opt/symmetric-server-3.8.26 /opt/symmetricds

ENTRYPOINT ["/opt/symmetricds/bin/sym"]
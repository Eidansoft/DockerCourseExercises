# Base image
FROM sicpa/symmetricds

# Uncompress Wildfly
RUN cp /opt/symmetricds/samples/corp-000.properties /opt/symmetricds/engines && \
	cp /opt/symmetricds/samples/store-001.properties /opt/symmetricds/engines && \
	cp /opt/symmetricds/samples/store-002.properties /opt/symmetricds/engines && \
	pushd /opt/symmetricds/samples && \
	../bin/dbimport --engine corp-000 --format XML --alter-case create_sample.xml && \
	../bin/symadmin --engine corp-000 create-sym-tables && \
	../bin/dbimport --engine corp-000 insert_sample.sql && \
	popd


FROM spotify/cassandra:base
COPY  cassandra-schema.cql /tmp/

#USER root

# Place single-node startup-config script
COPY cassandra-init.sh /usr/local/bin/
COPY cassandra-singlenode.sh /usr/local/bin/
RUN chmod +x  /usr/local/bin/cassandra-init.sh
RUN chmod +x  /usr/local/bin/cassandra-singlenode.sh
# Start Cassandra
RUN /usr/local/bin/cassandra-init.sh
ENTRYPOINT ["/usr/local/bin/cassandra-singlenode.sh"]

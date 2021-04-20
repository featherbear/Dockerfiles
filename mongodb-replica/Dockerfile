FROM mongo:4
ADD ./init_replicaset.js /docker-entrypoint-initdb.d/init_replicaset.js
ADD ./keyFile /keyFile
RUN chmod 400 /keyFile
RUN chown 999:999 /keyFile
CMD ["mongod", "--keyFile", "/keyFile", "--replSet", "rs0", "--bind_ip_all"]
FROM  gcr.io/google_containers/heapster-grafana-amd64:v4.4.3

COPY bin/grafana-cli /usr/bin/
ADD certs /etc/ssl/certs

RUN \
    grafana-cli --pluginsDir "/usr/share/grafana/data/plugins" plugins install grafana-kubernetes-app && \
    rm -r /usr/bin/grafana-cli /etc/ssl/certs

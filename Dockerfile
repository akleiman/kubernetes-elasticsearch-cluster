FROM quay.io/pires/docker-elasticsearch:1.6.0

MAINTAINER pjpires@gmail.com

# Override elasticsearch.yml config, otherwise plug-in install will fail
ADD elasticsearch.yml /elasticsearch/config/elasticsearch.yml
ADD logging.yml /elasticsearch/config/logging.yml

# Install Kubernetes discovery plug-in
RUN /elasticsearch/bin/plugin --install io.fabric8/elasticsearch-cloud-kubernetes/1.2.1

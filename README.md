# Elasticsearch

[![Build Status](https://cloud.drone.io/api/badges/dockhippie/elasticsearch/status.svg)](https://cloud.drone.io/dockhippie/elasticsearch)
[![](https://images.microbadger.com/badges/image/webhippie/elasticsearch.svg)](https://microbadger.com/images/webhippie/elasticsearch "Get your own image badge on microbadger.com")

These are docker images for [Elasticsearch](https://www.elastic.co/products/elasticsearch) running on an [Alpine Linux container](https://registry.hub.docker.com/u/webhippie/alpine/).


## Versions

* [latest](./latest) available as `webhippie/elasticsearch:latest`
* [6.4](./v6.4) available as `webhippie/elasticsearch:6.4`
* [5.6](./v5.6) available as `webhippie/elasticsearch:5.6`


## Volumes

* /var/lib/elasticsearch


## Ports

* 9200
* 9300


## Available environment variables

```bash
ELASTICSEARCH_ACTION_DESTRUCTIVE_REQUIRES_NAME = false
ELASTICSEARCH_BASE_DIR = /var/lib/elasticsearch
ELASTICSEARCH_BOOTSTRAP_MEMORY_LOCK = false
ELASTICSEARCH_CLUSTER_NAME = elasticsearch
ELASTICSEARCH_CONFIG_DIR = /etc/elasticsearch
ELASTICSEARCH_DATA_DIR = ${ELASTICSEARCH_BASE_DIR}/data
ELASTICSEARCH_DISCOVERY_MINIMUM_MASTERS = 1
ELASTICSEARCH_DISCOVERY_UNICAST_HOSTS =
ELASTICSEARCH_GATEWAY_RECOVER_AFTER_NODES = 1
ELASTICSEARCH_HTTP_COMPRESSION = true
ELASTICSEARCH_HTTP_CORS_ALLOW_ORIGIN =
ELASTICSEARCH_HTTP_CORS_ENABLED = false
ELASTICSEARCH_HTTP_ENABLED = true
ELASTICSEARCH_INITIAL_HEAP = 256m
ELASTICSEARCH_LOGS_DIR = ${ELASTICSEARCH_BASE_DIR}/logs
ELASTICSEARCH_MAXIMUM_HEAP = 256m
ELASTICSEARCH_MAX_FD = 65536
ELASTICSEARCH_MAX_LOCAL_STORAGE_NODES = 1
ELASTICSEARCH_MAX_MAP_COUNT =
ELASTICSEARCH_NETWORK_HOST = 0.0.0.0
ELASTICSEARCH_NETWORK_PUBLISH_HOST =
ELASTICSEARCH_NODE_DATA = true
ELASTICSEARCH_NODE_INGEST = true
ELASTICSEARCH_NODE_MASTER = true
ELASTICSEARCH_NODE_NAME = ${HOSTNAME}
ELASTICSEARCH_PLUGINS_DIR = ${ELASTICSEARCH_BASE_DIR}/plugins
ELASTICSEARCH_SCRIPTS_DIR = ${ELASTICSEARCH_BASE_DIR}/scripts
ELASTICSEARCH_STACK_SIZE = 1m
ELASTICSEARCH_WORK_DIR = ${ELASTICSEARCH_BASE_DIR}/work
```


## Inherited environment variables

* [webhippie/alpine](https://github.com/dockhippie/alpine#available-environment-variables)


## Contributing

Fork -> Patch -> Push -> Pull Request


## Authors

* [Thomas Boerger](https://github.com/tboerger)


## License

MIT


## Copyright

```
Copyright (c) 2018 Thomas Boerger <http://www.webhippie.de>
```

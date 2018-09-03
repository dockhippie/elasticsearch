# Elasticsearch

[![](https://images.microbadger.com/badges/image/webhippie/elasticsearch.svg)](https://microbadger.com/images/webhippie/elasticsearch "Get your own image badge on microbadger.com")

These are docker images for [Elasticsearch](https://www.elastic.co/products/elasticsearch) running on an [Alpine Linux container](https://registry.hub.docker.com/u/webhippie/alpine/).


## Versions

To get an overview about the available versions please take a look at the [GitHub branches](https://github.com/dockhippie/elasticsearch/branches/all) or our [Docker Hub tags](https://hub.docker.com/r/webhippie/elasticsearch/tags/), these lists are always up to date.


## Volumes

* /var/lib/elasticsearch


## Ports

* 9200
* 9300


## Available environment variables

```bash
ELASTICSEARCH_BASE_DIR /var/lib/elasticsearch
ELASTICSEARCH_CONFIG_DIR /etc/elasticsearch
ELASTICSEARCH_DATA_DIR ${ELASTICSEARCH_BASE_DIR}/data
ELASTICSEARCH_LOGS_DIR ${ELASTICSEARCH_BASE_DIR}/logs
ELASTICSEARCH_PLUGINS_DIR ${ELASTICSEARCH_BASE_DIR}/plugins
ELASTICSEARCH_SCRIPTS_DIR ${ELASTICSEARCH_BASE_DIR}/scripts
ELASTICSEARCH_WORK_DIR ${ELASTICSEARCH_BASE_DIR}/work
ELASTICSEARCH_CLUSTER_NAME elasticsearch
ELASTICSEARCH_NODE_NAME ${HOSTNAME}
ELASTICSEARCH_NODE_MASTER true
ELASTICSEARCH_NODE_DATA true
ELASTICSEARCH_NODE_INGEST true
ELASTICSEARCH_MAX_LOCAL_STORAGE_NODES 1
ELASTICSEARCH_NETWORK_HOST 0.0.0.0
ELASTICSEARCH_BOOTSTRAP_MEMORY_LOCK false
ELASTICSEARCH_DISCOVERY_MINIMUM_MASTERS 1
ELASTICSEARCH_DISCOVERY_UNICAST_HOSTS
ELASTICSEARCH_GATEWAY_RECOVER_AFTER_NODES 1
ELASTICSEARCH_ACTION_DESTRUCTIVE_REQUIRES_NAME false
ELASTICSEARCH_HTTP_ENABLED true
ELASTICSEARCH_HTTP_COMPRESSION true
ELASTICSEARCH_HTTP_CORS_ENABLED false
ELASTICSEARCH_HTTP_CORS_ALLOW_ORIGIN
ELASTICSEARCH_INITIAL_HEAP 256m
ELASTICSEARCH_MAXIMUM_HEAP 256m
ELASTICSEARCH_STACK_SIZE 1m
ELASTICSEARCH_MAX_MAP_COUNT
ELASTICSEARCH_MAX_FD 65536
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

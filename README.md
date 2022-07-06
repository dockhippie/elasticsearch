# elasticsearch

[![Docker Build](https://github.com/dockhippie/elasticsearch/actions/workflows/docker.yml/badge.svg)](https://github.com/dockhippie/elasticsearch/actions/workflows/docker.yml) [![GitHub Repo](https://img.shields.io/badge/github-repo-yellowgreen)](https://github.com/dockhippie/elasticsearch)

These are docker images for [Elasticsearch][upstream] running on our
[Alpine Linux image][parent].

## Versions

For the available versions please look at [Docker Hub][dockerhub] or
[Quay][quayio] or check the existing folders within the
[GitHub repository][github].

## Volumes

*  /var/lib/elasticsearch

## Ports

*  9200
*  9300

## Available environment variables

```console
ELASTICSEARCH_ACTION_DESTRUCTIVE_REQUIRES_NAME = false
ELASTICSEARCH_BASE_DIR = /var/lib/elasticsearch
ELASTICSEARCH_BOOTSTRAP_MEMORY_LOCK = false
ELASTICSEARCH_CLUSTER_INITIAL_MASTER_NODES = # >= v7.17
ELASTICSEARCH_CLUSTER_NAME = elasticsearch
ELASTICSEARCH_CONFIG_DIR = /etc/elasticsearch
ELASTICSEARCH_DATA_DIR = ${ELASTICSEARCH_BASE_DIR}/data
ELASTICSEARCH_DELETE_GC_LOGS_ON_START = true
ELASTICSEARCH_DISCOVERY_MINIMUM_MASTERS = 1 # <= v6.8
ELASTICSEARCH_DISCOVERY_SEED_HOSTS = # >= v7.17
ELASTICSEARCH_DISCOVERY_UNICAST_HOSTS = # <= v6.8
ELASTICSEARCH_HEALTHCHECK_CODE = 200
ELASTICSEARCH_HEALTHCHECK_URL = http://localhost:9200/
ELASTICSEARCH_HTTP_COMPRESSION = true
ELASTICSEARCH_HTTP_CORS_ALLOW_ORIGIN =
ELASTICSEARCH_HTTP_CORS_ENABLED = false
ELASTICSEARCH_HTTP_ENABLED = true # <= v5.6
ELASTICSEARCH_INITIAL_HEAP = 256m
ELASTICSEARCH_JAVA_OPTIONS =
ELASTICSEARCH_LOGS_DIR = ${ELASTICSEARCH_BASE_DIR}/logs
ELASTICSEARCH_MAX_FD = 65536
ELASTICSEARCH_MAX_MAP_COUNT =
ELASTICSEARCH_MAXIMUM_HEAP = 256m
ELASTICSEARCH_NETWORK_HOST = 0.0.0.0
ELASTICSEARCH_NETWORK_PUBLISH_HOST =
ELASTICSEARCH_NODE_DATA = true # <= v6.8
ELASTICSEARCH_NODE_INGEST = true # <= v6.8
ELASTICSEARCH_NODE_MASTER = true # <= v6.8
ELASTICSEARCH_NODE_NAME = ${HOSTNAME}
ELASTICSEARCH_NODE_ROLES = master,data,ingest # >= v7.17
ELASTICSEARCH_PLUGINS_DIR = ${ELASTICSEARCH_BASE_DIR}/plugins
ELASTICSEARCH_SCRIPTS_DIR = ${ELASTICSEARCH_BASE_DIR}/scripts
ELASTICSEARCH_SKIP_CHOWN = false
ELASTICSEARCH_SKIP_TEMPLATES = ${ELASTICSEARCH_BASE_DIR}/work
ELASTICSEARCH_SKIP_TEMPLATES = false
ELASTICSEARCH_STACK_SIZE = 1m
ELASTICSEARCH_WORK_DIR = ${ELASTICSEARCH_BASE_DIR}/work
ELASTICSEARCH_XPACK_SECURITY_ENABLED = true
```

## Inherited environment variables

*  [webhippie/alpine](https://github.com/dockhippie/alpine#available-environment-variables)

## Contributing

Fork -> Patch -> Push -> Pull Request

## Authors

*  [Thomas Boerger](https://github.com/tboerger)

## License

MIT

## Copyright

```console
Copyright (c) 2018 Thomas Boerger <http://www.webhippie.de>
```

[upstream]: https://www.elastic.co/elasticsearch
[parent]: https://github.com/dockhippie/alpine
[dockerhub]: https://hub.docker.com/r/webhippie/elasticsearch/tags
[quayio]: https://quay.io/repository/webhippie/elasticsearch?tab=tags
[github]: https://github.com/dockhippie/elasticsearch

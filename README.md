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
ELASTICSEARCH_CLUSTER_INITIAL_MASTER_NODES =
ELASTICSEARCH_CLUSTER_NAME = elasticsearch
ELASTICSEARCH_CONFIG_DIR = /etc/elasticsearch
ELASTICSEARCH_DATA_DIR = ${ELASTICSEARCH_BASE_DIR}/data
ELASTICSEARCH_DELETE_GC_LOGS_ON_START = true
ELASTICSEARCH_DISCOVERY_SEED_HOSTS =
ELASTICSEARCH_HEALTHCHECK_CODE = 200
ELASTICSEARCH_HEALTHCHECK_URL = http://localhost:9200/
ELASTICSEARCH_HTTP_COMPRESSION = true
ELASTICSEARCH_HTTP_CORS_ALLOW_ORIGIN =
ELASTICSEARCH_HTTP_CORS_ENABLED = false
ELASTICSEARCH_INITIAL_HEAP = 256m
ELASTICSEARCH_JAVA_OPTIONS =
ELASTICSEARCH_LOGS_DIR = ${ELASTICSEARCH_BASE_DIR}/logs
ELASTICSEARCH_MAX_FD = 65536
ELASTICSEARCH_MAX_MAP_COUNT =
ELASTICSEARCH_MAXIMUM_HEAP = 256m
ELASTICSEARCH_NETWORK_HOST = 0.0.0.0
ELASTICSEARCH_NETWORK_PUBLISH_HOST =
ELASTICSEARCH_NODE_NAME = ${HOSTNAME}
ELASTICSEARCH_NODE_ROLES = master,data,ingest
ELASTICSEARCH_PLUGINS_DIR = ${ELASTICSEARCH_BASE_DIR}/plugins
ELASTICSEARCH_SCRIPTS_DIR = ${ELASTICSEARCH_BASE_DIR}/scripts
ELASTICSEARCH_SKIP_CHOWN = false
ELASTICSEARCH_SKIP_TEMPLATES = false
ELASTICSEARCH_STACK_SIZE = 1m
ELASTICSEARCH_WORK_DIR = ${ELASTICSEARCH_BASE_DIR}/work
ELASTICSEARCH_XPACK_SECURITY_ENABLED = true
ES_JAVA_HOME = /usr/lib/jvm/java-17-openjdk
```

Extracted by the command: `grep -hE ': "\$\{(.*)\}"' latest/overlay/etc/entrypoint.d/*.sh | sed 's/: "\${//' | sed 's/:="/ = /' | sed 's/"}"$//' | sort | uniq`

## Inherited environment variables

*  [webhippie/alpine](https://github.com/dockhippie/alpine#available-environment-variables)

## Contributing

Generally we are following [conventional commits][commits] when we apply
changes. That way we are able to generate proper changelogs for every release.
Please use always pull requests to integrate new functionalities or to fix
issues.

For the release process we are following [semantic versioning][semver] which
clearly indicates if a new version just resolves bugs, includes new features or
even includes breaking changes.

After installing the tools via `mise install` as described above set up the
pre-commit hooks so they run automatically on every commit:

```console
pre-commit install --hook-type pre-commit --hook-type commit-msg
```

> `pre-commit` is managed by mise and will be available after `mise install`.

If you have changed something on the source you should simply commit following
the mentioned conventions:

```console
git checkout -b feat/new-feature
git add --all
git commit -m 'feat: added awesome new feature'
git push --set-upstream origin feat/new-feature
```

After pushing your changes into the Git repository you should create a pull
request on GitHub. If the pull request have been merged and everything built
fine it will also create automatically a new release at least once a week.

## Authors

*  [Thomas Boerger](https://github.com/tboerger)

## License

MIT

## Copyright

```console
Copyright (c) 2018 Thomas Boerger <http://www.webhippie.de>
```
[mise]: https://mise.jdx.dev/
[mise-install]: https://mise.jdx.dev/getting-started.html
[commits]: https://www.conventionalcommits.org/en/v1.0.0/
[semver]: https://semver.org/
[upstream]: https://www.elastic.co/elasticsearch
[parent]: https://github.com/dockhippie/alpine
[dockerhub]: https://hub.docker.com/r/webhippie/elasticsearch/tags
[quayio]: https://quay.io/repository/webhippie/elasticsearch?tab=tags
[github]: https://github.com/dockhippie/elasticsearch

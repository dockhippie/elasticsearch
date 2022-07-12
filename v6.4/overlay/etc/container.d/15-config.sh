#!/usr/bin/env bash

if [[ "${ELASTICSEARCH_SKIP_TEMPLATES}" != "true" ]]; then
    echo "> writing server config"
    gomplate -V \
        -o ${ELASTICSEARCH_CONFIG_DIR}/elasticsearch.yml \
        -f /etc/templates/elasticsearch.yml.tmpl || exit 1

    echo "> writing jvm options"
    gomplate -V \
        -o ${ELASTICSEARCH_CONFIG_DIR}/jvm.options \
        -f /etc/templates/jvm.options.tmpl || exit 1
fi

true

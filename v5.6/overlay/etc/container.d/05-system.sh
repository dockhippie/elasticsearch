#!/usr/bin/env bash

if [[ -n "${ELASTICSEARCH_MAX_MAP_COUNT}" ]]; then
    echo "Enforcing max mapcount..."
    sysctl -w vm.max_map_count=${ELASTICSEARCH_MAX_MAP_COUNT}
fi

if [[ -n "${ELASTICSEARCH_MAX_FD}" ]]; then
    echo "Enforcing open filedescriptors..."
    ulimit -n ${ELASTICSEARCH_MAX_FD}
fi

true

#!/usr/bin/env bash

if [[ ! -d ${ELASTICSEARCH_CONFIG_DIR} ]]; then
    echo "Creating config directory..."
    mkdir -p ${ELASTICSEARCH_CONFIG_DIR}
fi

if [[ ! -d ${ELASTICSEARCH_DATA_DIR} ]]; then
    echo "Creating data directory..."
    mkdir -p ${ELASTICSEARCH_DATA_DIR}
fi

if [[ ! -d ${ELASTICSEARCH_LOGS_DIR} ]]; then
    echo "Creating logs directory..."
    mkdir -p ${ELASTICSEARCH_LOGS_DIR}
fi

if [[ ! -d ${ELASTICSEARCH_PLUGINS_DIR} ]]; then
    echo "Creating plugins directory..."
    mkdir -p ${ELASTICSEARCH_PLUGINS_DIR}
fi

if [[ ! -d ${ELASTICSEARCH_SCRIPTS_DIR} ]]; then
    echo "Creating scripts directory..."
    mkdir -p ${ELASTICSEARCH_SCRIPTS_DIR}
fi

if [[ ! -d ${ELASTICSEARCH_WORK_DIR} ]]; then
    echo "Creating work directory..."
    mkdir -p ${ELASTICSEARCH_WORK_DIR}
fi

true

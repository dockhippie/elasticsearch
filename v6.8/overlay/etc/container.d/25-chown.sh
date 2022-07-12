#!/usr/bin/env bash

if [[ ${ELASTICSEARCH_SKIP_CHOWN} == "true" ]]; then
  echo "Skipping data chown..."
else
    echo "Fixing base permissions..."
    find ${ELASTICSEARCH_BASE_DIR} \( \! -user elastico -o \! -group elastico \) -print0 | xargs -r -0 chown elastico:elastico

    if [[ ! ${ELASTICSEARCH_CONFIG_DIR} =~ ^${ELASTICSEARCH_BASE_DIR} ]]; then
        echo "Fixing config permissions..."
        find ${ELASTICSEARCH_CONFIG_DIR} \( \! -user elastico -o \! -group elastico \) -print0 | xargs -r -0 chown elastico:elastico
    fi

    if [[ ! ${ELASTICSEARCH_DATA_DIR} =~ ^${ELASTICSEARCH_BASE_DIR} ]]; then
        echo "Fixing data permissions..."
        find ${ELASTICSEARCH_DATA_DIR} \( \! -user elastico -o \! -group elastico \) -print0 | xargs -r -0 chown elastico:elastico
    fi

    if [[ ! ${ELASTICSEARCH_LOGS_DIR} =~ ^${ELASTICSEARCH_BASE_DIR} ]]; then
        echo "Fixing logs permissions..."
        find ${ELASTICSEARCH_LOGS_DIR} \( \! -user elastico -o \! -group elastico \) -print0 | xargs -r -0 chown elastico:elastico
    fi

    if [[ ! ${ELASTICSEARCH_PLUGINS_DIR} =~ ^${ELASTICSEARCH_BASE_DIR} ]]; then
        echo "Fixing plugins permissions..."
        find ${ELASTICSEARCH_PLUGINS_DIR} \( \! -user elastico -o \! -group elastico \) -print0 | xargs -r -0 chown elastico:elastico
    fi

    if [[ ! ${ELASTICSEARCH_SCRIPTS_DIR} =~ ^${ELASTICSEARCH_BASE_DIR} ]]; then
        echo "Fixing scripts permissions..."
        find ${ELASTICSEARCH_SCRIPTS_DIR} \( \! -user elastico -o \! -group elastico \) -print0 | xargs -r -0 chown elastico:elastico
    fi

    if [[ ! ${ELASTICSEARCH_WORK_DIR} =~ ^${ELASTICSEARCH_BASE_DIR} ]]; then
        echo "Fixing scripts permissions..."
        find ${ELASTICSEARCH_WORK_DIR} \( \! -user elastico -o \! -group elastico \) -print0 | xargs -r -0 chown elastico:elastico
    fi
fi

true

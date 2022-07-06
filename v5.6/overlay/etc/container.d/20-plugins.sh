#!/usr/bin/env bash

for VAL in $(echo ${ELASTICSEARCH_PLUGINS_UNINSTALL} | tr "," " "); do
    if [[ -d "${ELASTICSEARCH_PLUGINS_DIR}/${VAL}" ]]; then
        echo "Skipping ${VAL} uninstall, directory doesn't exist..."
    else
        elasticsearch-plugin remove -p ${VAL}
    fi
done

for VAL in $(echo ${ELASTICSEARCH_PLUGINS_INSTALL} | tr "," " "); do
    if [[ -d "${ELASTICSEARCH_PLUGINS_DIR}/${VAL}" ]]; then
        echo "Skipping ${VAL} install, directory does exist..."
    else
        elasticsearch-plugin install -b ${VAL}
    fi
done

true

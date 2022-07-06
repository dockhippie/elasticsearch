#!/usr/bin/env bash

if [[ ${ELASTICSEARCH_DELETE_GC_LOGS_ON_START} == "true" ]]; then
    echo "Deleting gc logfiles..."
    find ${ELASTICSEARCH_LOGS_DIR} -iname gc.log\* | xargs -r -0 rm -f
fi

true

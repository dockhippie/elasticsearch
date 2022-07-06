#!/usr/bin/env bash

export ES_PATH_CONF="/etc/elasticsearch"
export ES_JVM_OPTIONS="/etc/elasticsearch/jvm.options"
export ES_JAVA_OPTS="-Des.path.home=/usr/share/elasticsearch -Des.path.plugins=${ELASTICSEARCH_PLUGINS_DIR} -Des.path.script=${ELASTICSEARCH_SCRIPTS_DIR} -Des.path.work=${ELASTICSEARCH_WORK_DIR} -Des.scripting.exception_for_missing_value=true -Xms${ELASTICSEARCH_INITIAL_HEAP} -Xmx${ELASTICSEARCH_MAXIMUM_HEAP} -Xss${ELASTICSEARCH_STACK_SIZE} ${ELASTICSEARCH_JAVA_OPTIONS}"

true

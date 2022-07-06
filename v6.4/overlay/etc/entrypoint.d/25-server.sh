#!/usr/bin/env bash

declare -x ELASTICSEARCH_CLUSTER_NAME
[[ -z "${ELASTICSEARCH_CLUSTER_NAME}" ]] && ELASTICSEARCH_CLUSTER_NAME="elasticsearch"

declare -x ELASTICSEARCH_NODE_NAME
[[ -z "${ELASTICSEARCH_NODE_NAME}" ]] && ELASTICSEARCH_NODE_NAME="${HOSTNAME}"

declare -x ELASTICSEARCH_NODE_MASTER
[[ -z "${ELASTICSEARCH_NODE_MASTER}" ]] && ELASTICSEARCH_NODE_MASTER="true"

declare -x ELASTICSEARCH_NODE_DATA
[[ -z "${ELASTICSEARCH_NODE_DATA}" ]] && ELASTICSEARCH_NODE_DATA="true"

declare -x ELASTICSEARCH_NODE_INGEST
[[ -z "${ELASTICSEARCH_NODE_INGEST}" ]] && ELASTICSEARCH_NODE_INGEST="true"

declare -x ELASTICSEARCH_NETWORK_HOST
[[ -z "${ELASTICSEARCH_NETWORK_HOST}" ]] && ELASTICSEARCH_NETWORK_HOST="0.0.0.0"

declare -x ELASTICSEARCH_NETWORK_PUBLISH_HOST
[[ -z "${ELASTICSEARCH_NETWORK_PUBLISH_HOST}" ]] && ELASTICSEARCH_NETWORK_PUBLISH_HOST=""

declare -x ELASTICSEARCH_HTTP_COMPRESSION
[[ -z "${ELASTICSEARCH_HTTP_COMPRESSION}" ]] && ELASTICSEARCH_HTTP_COMPRESSION="true"

declare -x ELASTICSEARCH_HTTP_CORS_ENABLED
[[ -z "${ELASTICSEARCH_HTTP_CORS_ENABLED}" ]] && ELASTICSEARCH_HTTP_CORS_ENABLED="false"

declare -x ELASTICSEARCH_HTTP_CORS_ALLOW_ORIGIN
[[ -z "${ELASTICSEARCH_HTTP_CORS_ALLOW_ORIGIN}" ]] && ELASTICSEARCH_HTTP_CORS_ALLOW_ORIGIN=""

declare -x ELASTICSEARCH_BOOTSTRAP_MEMORY_LOCK
[[ -z "${ELASTICSEARCH_BOOTSTRAP_MEMORY_LOCK}" ]] && ELASTICSEARCH_BOOTSTRAP_MEMORY_LOCK="false"

declare -x ELASTICSEARCH_DISCOVERY_MINIMUM_MASTERS
[[ -z "${ELASTICSEARCH_DISCOVERY_MINIMUM_MASTERS}" ]] && ELASTICSEARCH_DISCOVERY_MINIMUM_MASTERS="1"

declare -x ELASTICSEARCH_DISCOVERY_UNICAST_HOSTS
[[ -z "${ELASTICSEARCH_DISCOVERY_UNICAST_HOSTS}" ]] && ELASTICSEARCH_DISCOVERY_UNICAST_HOSTS=""

declare -x ELASTICSEARCH_ACTION_DESTRUCTIVE_REQUIRES_NAME
[[ -z "${ELASTICSEARCH_ACTION_DESTRUCTIVE_REQUIRES_NAME}" ]] && ELASTICSEARCH_ACTION_DESTRUCTIVE_REQUIRES_NAME="false"

declare -x ELASTICSEARCH_XPACK_SECURITY_ENABLED
[[ -z "${ELASTICSEARCH_XPACK_SECURITY_ENABLED}" ]] && ELASTICSEARCH_XPACK_SECURITY_ENABLED="true"

declare -x ELASTICSEARCH_INITIAL_HEAP
[[ -z "${ELASTICSEARCH_INITIAL_HEAP}" ]] && ELASTICSEARCH_INITIAL_HEAP="256m"

declare -x ELASTICSEARCH_MAXIMUM_HEAP
[[ -z "${ELASTICSEARCH_MAXIMUM_HEAP}" ]] && ELASTICSEARCH_MAXIMUM_HEAP="256m"

declare -x ELASTICSEARCH_STACK_SIZE
[[ -z "${ELASTICSEARCH_STACK_SIZE}" ]] && ELASTICSEARCH_STACK_SIZE="1m"

declare -x ELASTICSEARCH_JAVA_OPTIONS
[[ -z "${ELASTICSEARCH_JAVA_OPTIONS}" ]] && ELASTICSEARCH_JAVA_OPTIONS=""

declare -x ELASTICSEARCH_SKIP_TEMPLATES
[[ -z "${ELASTICSEARCH_SKIP_TEMPLATES}" ]] && ELASTICSEARCH_SKIP_TEMPLATES="false"

declare -x ELASTICSEARCH_SKIP_CHOWN
[[ -z "${ELASTICSEARCH_SKIP_CHOWN}" ]] && ELASTICSEARCH_SKIP_CHOWN="false"

declare -x ELASTICSEARCH_DELETE_GC_LOGS_ON_START
[[ -z "${ELASTICSEARCH_DELETE_GC_LOGS_ON_START}" ]] && ELASTICSEARCH_DELETE_GC_LOGS_ON_START="true"

true

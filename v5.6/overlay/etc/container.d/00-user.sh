#!/usr/bin/env bash

if [[ ! "$(id -g elastico)" =~ "${PGID}" ]]; then
    echo "> enforcing group id"
    groupmod -o -g ${PGID} elastico
fi

if [[ ! "$(id -u elastico)" =~ "${PGID}" ]]; then
    echo "> enforcing user id"
    usermod -o -u ${PUID} elastico
fi

true

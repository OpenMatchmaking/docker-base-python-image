#!/usr/bin/env bash

app_server=${APP_SERVER:-none}


if [[ ${app_server} = sanic ]]; then
    python ./manage.py run
elif [[ ${app_server} = none ]]; then
    timeout=${CONTAINER_TIMEOUT:-86400}
    echo -e "Container was started in the idle mode on $timeout seconds..."
    sleep ${timeout}
fi

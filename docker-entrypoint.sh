#!/usr/bin/env bash
set -e

mongodb_timeout=${WAIT_FOR_MONGODB:-false}
redis_timeout=${WAIT_FOR_REDIS:-false}
rabbitmq_timeout=${WAIT_FOR_RABBITMQ:-false}


if [[ ${mongodb_timeout} != false ]]; then
    /wait-for.sh ${MONGODB_HOST:-mongodb} ${MONGODB_PORT:-27017} ${mongodb_timeout} "MongoDB"
fi

if [[ ${redis_timeout} != false ]]; then
    /wait-for.sh ${REDIS_HOST:-redis} ${REDIS_PORT:-6379} ${redis_timeout} "Redis"
fi

if [[ ${rabbitmq_timeout} != false ]]; then
    /wait-for.sh ${RABBITMQ_HOST:-rabbitmq} ${RABBITMQ_PORT:-5672} ${rabbitmq_timeout} "RabbitMQ"
fi

exec "$@"

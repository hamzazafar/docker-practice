#!/bin/bash
set -eo pipefail

host="$(hostname --ip-address)"

if ping="$(redis-cli -h "$host" ping)" && [ "$ping" = 'PONG' ]; then
	exit 0
fi

exit 1

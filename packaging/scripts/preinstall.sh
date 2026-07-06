#!/bin/sh
set -e

if ! getent group nginx >/dev/null 2>&1; then
    groupadd -r nginx
fi

if ! getent passwd nginx >/dev/null 2>&1; then
    useradd -r -g nginx -d /var/cache/nginx -s /sbin/nologin \
        -c "nginx web server" nginx
fi

exit 0

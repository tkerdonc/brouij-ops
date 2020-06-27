#!/bin/bash

set -x
sed -e "s/SERVER_NAME/${SERVER_NAME}/g" < /etc/nginx/conf.d/default.template \
                                        > /etc/nginx/conf.d/default.conf

nginx -g "daemon off;"

#!/bin/bash
set -xe

certbot certonly \
    -n \
    --agree-tos \
    --email $EMAIL \
    -d $DOMAIN \
    --dns-route53 \
    --preferred-challenges=dns \
    --logs-dir /tmp/letsencrypt \
    --config-dir ~/local/letsencrypt \
    --work-dir /tmp/letsencrypt

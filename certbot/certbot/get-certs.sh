#!/usr/bin/env bash

set -x

/opt/certbot/venv/bin/certbot certonly \
    --quiet \
    --agree-tos \
    --email cloudflare@gordonlittle.co.uk \
    --dns-cloudflare \
    --dns-cloudflare-credentials /opt/certbot/credentials.txt \
    --domain '*.gwl.org.uk' \
    --preferred-challenges dns-01 \
    --work-dir /opt/certbot/work \
    --config-dir /opt/certbot/config

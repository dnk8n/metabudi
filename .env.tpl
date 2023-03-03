# File source: https://raw.githubusercontent.com/Budibase/budibase/develop/hosting/.env
# Use the main port in the builder for your self hosting URL, e.g. localhost:10000
MAIN_PORT=10000

# This section contains all secrets pertaining to the system
JWT_SECRET=testsecret
MINIO_ACCESS_KEY=budibase
MINIO_SECRET_KEY=budibase
REDIS_PASSWORD=budibase
INTERNAL_API_KEY=budibase
COUCH_DB_USER=budibase
COUCH_DB_PASSWORD=budibase

# This section contains variables that do not need to be altered under normal circumstances
APP_PORT=4002
WORKER_PORT=4003
MINIO_PORT=4004
COUCH_DB_PORT=4005
REDIS_PORT=6379
WATCHTOWER_PORT=6161
BUDIBASE_ENVIRONMENT=PRODUCTION

# An admin user can be automatically created initially if these are set
BB_ADMIN_USER_EMAIL=budibase@example.com
BB_ADMIN_USER_PASSWORD=budibase

# A path that is watched for plugin bundles. Any bundles found are imported automatically/
PLUGINS_DIR=/var/lib/metabudi/plugins

# Variables for docker-compose.override.yaml
TRAEFIK_BASICAUTH=admin:$2y$10$bEIJAkNc8Qf.ryLijVzRSeE9jto9AuwBpUDNQ.IcXSwlH7G5lHlmi  # htpasswd -bnBC 10 "" xyz | tr -d ':\n'
ACME_PROVIDER=cloudflare
CF_API_EMAIL=metabudi@example.com
CF_API_KEY=testsecret
HOST=metabudi.example.com
POSTGRES_DB=metabudi
POSTGRES_USER=metabudi
POSTGRES_PASSWORD=metabudi

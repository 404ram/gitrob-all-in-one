#!/bin/bash
set -e

psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" <<-EOSQL
    CREATE ROLE gitto WITH PASSWORD 'gitto';
    ALTER ROLE gitto WITH LOGIN;
    CREATE DATABASE gitto;
    GRANT ALL PRIVILEGES ON DATABASE gitto TO gitto;
EOSQL

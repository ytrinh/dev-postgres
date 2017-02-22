#!/bin/bash

PGPASSWORD=dev psql -v ON_ERROR_STOP=1 --username "postgres" --dbname=dev < /dev-pg-backup.sql


FROM postgres:9.6-alpine

# File Author / Maintainer
LABEL authors="Yung Trinh"

ENV POSTGRES_USER postgres
ENV POSTGRES_PASSWORD postgres

COPY dev-db/init-db.sh /docker-entrypoint-initdb.d/
COPY dev-db/sql /docker-entrypoint-initdb.d/sql
COPY schema /docker-entrypoint-initdb.d/schema

RUN cd /docker-entrypoint-initdb.d/; chmod +x init-db.sh



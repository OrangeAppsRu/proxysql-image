ARG TAG
FROM docker.io/proxysql/proxysql:${TAG}

RUN apt-get update \
    && apt-get install --no-install-recommends -y mariadb-client \
    && apt-get clean && apt-get autoclean && rm -rf /var/lib/apt/lists/*

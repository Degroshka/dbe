FROM postgres:15

# Install additional extensions
RUN apt-get update \
    && apt-get install -y postgresql-15-postgis-3 \
    && rm -rf /var/lib/apt/lists/*

# Create directory for initialization scripts
RUN mkdir -p /docker-entrypoint-initdb.d 
FROM perl:5

RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y --no-install-recommends \
      libdate-manip-perl \
      libdbi-perl \
      libdbd-pg-perl \
      libfile-slurp-perl \
      libgetopt-long-descriptive-perl \
      libjson-perl \
      liburi-encode-perl \
      libwww-perl \
      && \
    rm -rf /var/cache/apt && \
    rm -rf /var/lib/apt/lists/
WORKDIR /app
COPY noteisdue /app/
COPY docker/noteisdueconfig.json /app/

CMD ["/app/noteisdue", "--configfile", "/app/noteisdueconfig.json"]


FROM python:3.10-slim as build_stage
WORKDIR /data
COPY . .

RUN chmod +x entrypoint.sh

ENTRYPOINT ["/data/entrypoint.sh"]
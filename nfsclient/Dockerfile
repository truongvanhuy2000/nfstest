FROM python:3.10-slim as build_stage
WORKDIR /data
COPY . .

RUN apt update \
    && apt install -y nfs-common \
    && chmod +x entrypoint.sh

ENTRYPOINT ["/data/entrypoint.sh"]
CMD ["bash"]
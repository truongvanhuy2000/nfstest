FROM ubuntu:latest as build_stage
WORKDIR /data
COPY . .

RUN apt update \
    && apt install -y nfs-kernel-server \
    && chmod +x entrypoint.sh

CMD ["/data/entrypoint.sh"]

FROM ubuntu:latest as build_stage
WORKDIR /data
COPY . .

RUN apt update \
    && apt install -y nfs-common \
    && chmod +x entrypoint.sh

ENTRYPOINT ["/data/entrypoint.sh"]
CMD ["bash"]
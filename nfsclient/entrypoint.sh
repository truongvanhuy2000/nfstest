#!/usr/bin/env bash
## Application-specific logic and mounting NVME storage removed ##
 
## Export NFS Mount
mkdir /video
service rpcbind start
service nfs-common start
mount -v $NFS_SERVER_IP:/ /video
ls -a /video
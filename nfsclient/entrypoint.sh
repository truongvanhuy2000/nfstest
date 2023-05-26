#!/usr/bin/env bash
## Application-specific logic and mounting NVME storage removed ##
 
## Export NFS Mount
# mkdir /video
# service rpcbind start
# service nfs-common start
# mount -v $NFS_SERVER_IP:/ /video
# ls -a /video

MOUNT_SUCCESS=false

while [ $MOUNT_SUCCESS = false ]; do
    mkdir -p /video
    service rpcbind start
    service nfs-common start
    mount -v $NFS_SERVER_IP:/ /video

    if [ $? -eq 0 ]; then
        echo "Mount sucessfully"
        MOUNT_SUCCESS=true
    else
        echo "Mount failed. Retrying in 10 seconds..."
        sleep 10
    fi
done

ls -a /video
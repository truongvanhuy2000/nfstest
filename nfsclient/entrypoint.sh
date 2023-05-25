#!/usr/bin/env bash
## Application-specific logic and mounting NVME storage removed ##
 
## Export NFS Mount
mkdir /video
mount -t nfs "$NFS_SERVER_IP:/data/resources" /video

if mount | grep "/video"; then
  echo "NFS share mounted successfully!"
else
  echo "ERROR: Failed to mount the NFS share."
  exit 1
fi
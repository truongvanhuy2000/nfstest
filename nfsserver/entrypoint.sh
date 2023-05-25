#!/usr/bin/env bash
## Application-specific logic and mounting NVME storage removed ##
 
## Export NFS Mount
chown nobody:nogroup /data/resources
chmod 777 /data/resources

echo "/data/resources *(rw,sync,no_subtree_check)" > /etc/exports

exportfs -a
#!/bin/bash

# Timezone
ln -fs /usr/share/zoneinfo/UTC /etc/localtime
# Add EFS mount
mkdir /mnt/efs
yum install -y amazon-efs-utils
cp /etc/fstab /etc/fstab.bak
echo '${efs_dns}:/ /mnt/efs efs defaults,_netdev 0 0' | sudo tee -a /etc/fstab
mount -a

echo "Done"
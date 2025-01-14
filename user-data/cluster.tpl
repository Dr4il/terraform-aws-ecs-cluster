#!/bin/bash
echo "ECS_CLUSTER=${cluster_name}" > /etc/ecs/ecs.config
sudo mkdir -p ${mount_dir} && sudo mount -t nfs4 -o tls,nfsvers=4.1,rsize=1048576,wsize=1048576,hard,timeo=600,retrans=2 ${efs_id}.efs.${aws_region}.amazonaws.com:/ ${mount_dir}
sudo mkdir -p ${mount_dir2} && sudo mount -t nfs4 -o tls,nfsvers=4.1,rsize=1048576,wsize=1048576,hard,timeo=600,retrans=2 ${efs_id2}.efs.${aws_region}.amazonaws.com:/ ${mount_dir2}

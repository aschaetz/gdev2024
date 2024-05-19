sudo mkdir -p /mnt/$MOUNT_POINT/
sudo sshfs -o allow_other,default_permissions,StrictHostKeyChecking=no,IdentityFile=/home/phymgr/.ssh/id_rsa phymgr@$REMOTE_SERVER:$REMOTE_FOLDER /mnt/$MOUNT_POINT/

# setup GDPROOT remote + local
sudo mkdir -p /GDPROOT/data

# local content
# ln -s /IdeaProjects/etc etc
# remote content
sudo ln -s /mnt/$MOUNT_POINT/projects /GDPROOT/data/projects
sudo ln -s /mnt/$MOUNT_POINT/genomes /GDPROOT/data/genomes
sudo ln -s /mnt/$MOUNT_POINT/agents /GDPROOT/data/agents
sudo ln -s /mnt/$MOUNT_POINT/workflows /GDPROOT/data/workflows
sudo ln -s /mnt/$MOUNT_POINT/nextflow /GDPROOT/data/nextflow
sudo ln -s /mnt/$MOUNT_POINT/indexes /GDPROOT/data/indexes
sudo ln -s /mnt/$MOUNT_POINT/activities /GDPROOT/data/activities

sudo chown -R phymgr /GDPROOT
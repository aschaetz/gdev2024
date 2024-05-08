mkdir -p /mnt/$MOUNT_POINT/
sshfs -o allow_other,default_permissions phymgr@$REMOTE_SERVER:$REMOTE_FOLDER /mnt/$MOUNT_POINT/

# setup GDPROOT remote + local
mkdir -p /GDPROOT
mkdir -p /GDPROOT/data
# local content
# ln -s /IdeaProjects/etc etc
# remote content
ln -s /mnt/$MOUNT_POINT/projects /GDPROOT/data/projects
ln -s /mnt/$MOUNT_POINT/genomes /GDPROOT/data/genomes
ln -s /mnt/$MOUNT_POINT/agents /GDPROOT/data/agents
ln -s /mnt/$MOUNT_POINT/workflows /GDPROOT/data/workflows
ln -s /mnt/$MOUNT_POINT/nextflow /GDPROOT/data/nextflow
ln -s /mnt/$MOUNT_POINT/indexes /GDPROOT/data/indexes
ln -s /mnt/$MOUNT_POINT/activities /GDPROOT/data/activities

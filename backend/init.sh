apt update -y && apt install -y sshfs
mkdir -p /mnt/pine-data-phymgr/
sshfs -o allow_other,default_permissions phymgr@pine.ch.genedata.com:/local0/selector/data/dev /mnt/pine-data-phymgr/

# setup GDPROOT remote + local
mkdir -p /GDPROOT
mkdir -p /GDPROOT/data
# local content
# ln -s /IdeaProjects/etc etc
# remote content
ln -s /mnt/pine-data-phymgr/projects /GDPROOT/data/projects
ln -s /mnt/pine-data-phymgr/genomes /GDPROOT/data/genomes
ln -s /mnt/pine-data-phymgr/agents /GDPROOT/data/agents
ln -s /mnt/pine-data-phymgr/workflows /GDPROOT/data/workflows
ln -s /mnt/pine-data-phymgr/nextflow /GDPROOT/data/nextflow
ln -s /mnt/pine-data-phymgr/indexes/ /GDPROOT/data/indexes
ln -s /mnt/pine-data-phymgr/activities /GDPROOT/data/activities

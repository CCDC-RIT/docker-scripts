#!/bin/bash

# We stay backing up 
# https://docs.docker.com/desktop/backup-and-restore/

# Create Secret Directory 
mkdir -p /usr/share/docker-backup

# Commit containers (1)
# ex: docker container commit --> docker-backup 

# Docker Push (2) 
# ex: docker push 
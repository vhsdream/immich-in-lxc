#!/bin/bash

set -xeuo pipefail # Make my life easier

# -------------------
# Copy service file
# -------------------
SCRIPT_DIR=$PWD

copy_service_files () {
    # Copy new services
    cp immich-ml.service /etc/systemd/system/
    cp immich-web.service /etc/systemd/system/
}

copy_service_files

# -------------------
# Create log directory
# -------------------

create_log_directory () {
    mkdir -p /var/log/immich
}

create_log_directory

echo "Done!"

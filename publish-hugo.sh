#!/bin/bash
# Script Name: hugo_publish
# Author: codename
# Description: Builds Hugo public files and publishes them to a remote server via Rsync
# Notes: This script assumes you are in the base directory of your Hugo site (where the config file is located)
clear

# Set the theme variable to the first argument passed
THEME=$1

# Set the variable for the local directory to transfer
LOCAL_DIR=$PWD
LOCAL_DIR="${LOCAL_DIR}/public/"

#Rsync Information
RSYNC_USER="MyUser"
RSYNC_SERVER="server.net"
RSYNC_REMOTE_DIR="/path/to/public_html/"

# Check if $THEME is empty; If so, stop and throw an error
if [ -z "$THEME" ]; then
    echo "No theme name provided!"
    echo
    echo "Exiting script"
    exit
fi

# Generate the static content
echo "Building public files with specified theme ($THEME)"
echo
echo "Hugo output:"
echo "----------------------------------"
hugo --theme=$THEME

#Transfer the contents of the public directory to the target server
echo
echo "Transferring files..."
echo
rsync -avz $LOCAL_DIR $RSYNC_USER@$RSYNC_SERVER:$RSYNC_REMOTE_DIR
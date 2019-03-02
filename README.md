# About
This script was created when I was utilizing Hugo to publish content to a site. It's intent was to bundle the repetitive functions of the publishing process into a single command call.

# Environment
This script was developed and tested on Fedora 26, however it should work on most other platforms with some modification.

# Usage
The following items need to be updated in the script to reflect you local and remote environments:
* RSYNC_USER - The username for the remote RSync process
* RSYNC_SERVER - The server name for the RSync process (Can be a host name or IP)
* RSYNC_REMOTE_DIR - The directory on RSYNC_SERVER where the files need to be uploaded

## Command Syntax
Calling the script is relativly straightforward:

'./hugo_publish.sh <THEME_NAME>'

Note: The script assumes it is located within the directory structure of your Hugo project

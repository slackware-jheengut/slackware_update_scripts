#!/bin/sh


sh bin/rsync_slackware_packages.sh 

slackpkg update ||  slackpkg install-new || slackpkg upgrade-all 


sbopkg -r

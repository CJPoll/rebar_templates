#!/bin/bash - 
#===============================================================================
#
#          FILE: update_templates.sh
# 
#         USAGE: ./update_templates.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Cody Poll (CJPoll), CJPoll@gmail.com
#  ORGANIZATION: PollSoft
#       CREATED: 06/26/2013 02:15:07 PM MDT
#      REVISION:  ---
#===============================================================================

set -o nounset                              # Treat unset variables as an error

if [ ! -d ~/.rebar/templates ]; then
	mkdir -p ~/.rebar/templates
fi
cp ./templates/* ~/.rebar/templates

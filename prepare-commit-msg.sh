#!/bin/bash
# Automatically adds branch name and branch description to every commit message.

echo ""
echo " Adding branch name to beginning of the commit message... "

branchName=${git rev-parse --abbrev-ref HEAD | cut -d'/' -f1}    #Get branch name before /description

sed -i '.bak' "1s/^/\[$branchName\]: /" $1   #Insert branch name at the start of the commit message file
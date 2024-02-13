#!/bin/bash
# Automatically adds branch name and branch description to every commit message.

echo ""
echo " Adding branch name to beginning of the commit messassssge... "

branchPath=$(git symbolic-ref -q HEAD)
branchName=${branchPath##*/}    #Get text behind the last / of the branch path

firstLine=$(head -n1 $1)
sed -i '.bak' "1s/^/\[$branchName\]: /" $1   #Insert branch name at the start of the commit message file
#!/bin/bash
# Automatically adds branch name and branch description to every commit message.

echo ""
echo " Adding branch name to beginning of the commit message... "

branchPath=$(git symbolic-ref -q HEAD)
branchName=${branchPath##*/}    #Get text behind the last / of the branch path

firstLine=$(head -n1 $1)

if [ -z "$firstLine"  ] ;then   #Check that this is not an amend by checking that the first line is empty
    sed -i "1s/^/[$branchName]: \n/" $1   #Insert branch name at the start of the commit message file
fi
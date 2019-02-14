#!/bin/bash
if [ -z "$1" ] 
then
    echo "One argument required."
    echo "Please give name of the branch you want to compare and deleted merged branches with."
    exit
fi
namedBranch=$1
currentBranch=`git rev-parse --abbrev-ref HEAD`
if [ "$currentBranch" != "$namedBranch" ] 
then
    echo "Current branch: $currentBranch"
    echo "Please run this command in the branch $namedBranch, you have given as the first argument."
    exit
fi
echo "Checking which branches have been merged with your given branch $namedBranch"
mergedBranches=($(git branch --merged | egrep -v "(^\*|$namedBranch)"))
echo "Found ${#mergedBranches[@]} merged branched that can be deleted."
for branch in "${mergedBranches[@]}"; do
    echo "Deleting merged ${branch}"
    git branch -d $branch
done


#!/bin/bash
#TODO: CHECK CURRENTLY IN MASTER
mergedBranches=($(git branch --merged | egrep -v "(^\*|master)"))
for branch in "${mergedBranches[@]}"; do
    echo "Deleting merged ${branch}"
    git branch -d $branch
done

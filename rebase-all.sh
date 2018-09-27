#!/bin/bash
localBranches=($(git for-each-ref refs/heads --format='%(refname)' | cut -c 12-))
for branch in "${localBranches[@]}"; do
    echo "Checking out ${branch}"
    git checkout $branch
    echo "Bringing the power of Yoda (rebase master:master)"
    git pull --rebase origin master:master
done

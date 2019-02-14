# Warning!
Read and understand before using. Some might do wild things and are created for ad-hoc situations. Use at your own peril.

# General Tips
I clone this repository and make a symbolic link to these scripts in my ~/bin so I can run these
anywhere but they will be kept up to date if I pull the latest code for the repository.

For example:

``` $
ln -s rebase-all.sh ~/bin/rebase-all
```

Now you can run rebase-all anywhere.

# Description
Scripts and such for managing all things related to git.

## delete-merged.sh
Example use

``` $
./delete-merged.sh master
```

Checks which local branches have been already merged with the given branch name and perform soft
git deletion on them. Does not delete the given branch itself.

## rebase-all.sh
Takes all local branches and performs git checkout and rebase from origin master:master to each.

## yoda
A cutely named shortcut for rebasing from origin master:master. I place this to my users home-folder/bin.

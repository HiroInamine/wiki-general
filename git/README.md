# Git useful commands

### Using this helper will store your passwords unencrypted on disk
git config credential.helper store


### Tracking da branch local para branch remota
* git branch --set-upstream-to <remote>/<branch>   
* git branch --unset-upstream 


### Branches
* git branch -a -v (view todas as branches localmente)
* git branch -vv (lista branch locais e track do repositorio)
* git branch -a --list -v  *develop


### Tags
* git tag -a <releaseName> -m "<description>"   (create)
* git tag (list)
* git push <remote> <tag> (create tag in repo)

* git tag -d <tag> (remove local)
* git push --delete <remote> <tag> (remove tag in repo)


### Remove untracked files from the working tree
git clean -d -f
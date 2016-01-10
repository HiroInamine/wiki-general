# Git useful commands

#### Store credentials
* `git config credential.helper store` - store your passwords unencrypted on disk

#### Tracking local branch to remote branch
* `git branch --set-upstream-to <remote>/<branch>`
* `git branch --unset-upstream`

#### Branches
* `git branch -a -v` (view todas as branches localmente)
* `git branch -vv` (lista branch locais e track do repositorio)
* `git branch -a --list -v *develop`

#### Tags
* `git tag -a <releaseName> -m "<description>"` (create)
* `git tag` (list)
* `git push <remote> <tag>` (create tag in repo)
* `git tag -d <tag>` (remove local)
* `git push --delete <remote> <tag>` (remove tag in repo)

#### Remove untracked files from the working tree
* `git clean -d -f`

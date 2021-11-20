# dotfiles
Original post: https://www.atlassian.com/git/tutorials/dotfiles

Setup your git

```
$ git config --global user.name YOUR_NAME
$ git config --global user.email YOUR_EMAIL
$ git config --global init.defaultBranch master
$ git config --global core.editor vim
$ git config --global credential.helper store # this will store your name and access token
```
Create your access token: https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/creating-a-personal-access-token

Setup bare git
```
$ git init --bare $HOME/.dotfiles
$ alias config ='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
$ config config --local status.showUntrackedFiles no
$ echo "alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'" >> $HOME/.bashrc
$ config remote add origin https://github.com/YOUR_NAME/dotfiles
```
Add your dotfiles
```
$ config add .xinitrc
$ config commit -m "Add .xinitrc"
$ config push
$ config push -u origin master
```
Install your dotfiles on a new machine
```
$ alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
$ echo ".dotfiles" >> .gitignore  # And that your source repository ignores the folder where you'll clone it, so that you don't create weird recursion problems
$ git clone --bare <git-repo-url> $HOME/.dotfiles
$ config checkout
$ config config --local status.showUntrackedFiles no

```

## Password management
I use pass: https://wiki.archlinux.org/title/Pass


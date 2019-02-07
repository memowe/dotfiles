# Dotfiles handling

Read the whole blog post: [Nicola Paolucci: The best way to store your dotfiles: A bare Git repository][blog]

```bash
$ git clone --recurse-submodules -j8 --bare https://github.com/memowe/dotfiles.git $HOME/.dotfiles.git
$ cd .vim && make && cd -
```

`.bashrc` file:

```bash
$ alias dotfiles='/usr/bin/env git --git-dir=$HOME/.dotfiles.git --work-tree=$HOME'
```

Show added files only:

```bash
$ dotfiles config --local status.showUntrackedFiles no
```

Sometimes, this needs to be done to make `dotfiles fetch --all` work as expected.

```bash
$ dotfiles config remote.origin.fetch "+refs/heads/*:refs/remotes/origin/*"
```

The `dotfiles` command works now exactly like git does:

```bash
$ dotfiles status
$ dotfiles checkout work .tmux.conf
$ dotfiles add .config/redshift.conf
$ dotfiles commit -m 'Add redshift config'
$ dotfiles push origin work
```

[blog]: https://developer.atlassian.com/blog/2016/02/best-way-to-store-dotfiles-git-bare-repo/

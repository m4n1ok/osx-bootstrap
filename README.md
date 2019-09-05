osx-bootstrap
=============

Personal bootstrap script for new OSX installs

```
curl --silent https://raw.githubusercontent.com/m4n1ok/osx-bootstrap/master/install.sh | sh
```

## Customize Install

* `git clone https://github.com/m4n1ok/osx-bootstrap.git` to get these files locally
* Edit `settings.sh` with your computer name
* Edit `symlink-dotfiles.sh` to define your `$dev` directory
* Review and customize the apps installed from Brewfile & Caskfile

```
bash bootstrap.sh
```

## Requirements

You'll need to have OSX Command Line Tools installed to use git, which will be installed automatically when you're trying to use git for the first time (during homebrew installation); you'll get a nice popup window asking you to install it, so let it do that for you. If you want to you can remove the OSX Command Line Tools afterwards as you'll probably install newer versions of these tools anyway.

## settings.sh

Some sane settings for me, use them at your own risk!

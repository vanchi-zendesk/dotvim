dotvim
======

vimrc and files


Thanks to: http://vimcasts.org/episodes/synchronizing-plugins-with-git-submodules-and-pathogen/

Setup
```
cd ~
git clone http://github.com/username/dotvim.git ~/.vim
ln -s ~/.vim/vimrc ~/.vimrc
cd ~/.vim
git submodule update --init
```

Update
```
git submodule foreach git pull origin master
```

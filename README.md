### Clean old .vim directory:

```
$ rm -rf ~/.vim
```


### Set up Vundle:

```
$ git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
```


### Clone and use yvim:

```
$ git clone https://github.com/yunwen0111/.yvim.git
$ cd .yvim
$ ./link.sh
```


### Update Vim if older than 7.3.598

If we need YouCompleteMe, we need Vim 7.3.598 with Python 2 or Python 3 support.


### Install Plugins:

```
$ vim +PluginInstall +qall
```

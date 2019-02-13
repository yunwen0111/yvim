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
$ git clone https://github.com/yunwen0111/yvim.git
$ cd yvim
$ ./link.sh
```


### Update Vim if older than 7.3.598

If we need YouCompleteMe, we need Vim 7.3.598 with Python 2 or Python 3 support.


### Install Plugins and YCM:

```
$ vim +PluginInstall +qall
$ cd ~/.vim/bundle/YouCompleteMe  &&  ./install.py --clang-completer
```


### Screen setting:

When using screen, sometimes we need set `~/.screenrc` to enable 256 colors:
```
termcapinfo screen 'Co#256:AB=\E[48;5;%dm:AF=\E[38;5;%dm'
```

And make sure `TERM=screen`.


### powerline/fonts setting:

See [Readme](https://github.com/powerline/fonts).

iTerm2 needs extra setting.

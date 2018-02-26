# Mvim

**Mvim** is a composition of vim and some vim plugins, which I used it as my  daily development tool personally.


# Introduction

&ensp;&ensp;&ensp;&ensp;It's sufficient for me to write some `Java` , `PHP`, `C/C++` , `Python` , `Go` and `Javascript`. And you can feel free to tweak it to match your personal development requirements after `git clone` it.


# Screenshot Preview

1.  vim with editing .vimrc

![vimrc.png](https://raw.githubusercontent.com/duanqiaobb/Mvim/master/screenshots/vim_vimrc.png)

# Usage

&ensp;&ensp;&ensp;&ensp;This repository is just a draft repositry, I just put  all plugins into one blanket, without catergorizing them.I will do it after if I have some time.</br>
&ensp;&ensp;&ensp;&ensp;If you want ot use it or you just don't want to collect these plugins by walking through all network corners, It's easy to set up by doing serveral steps as follow.

## Only use vim configuration (dot files)

1. First of all, git clone this repositry

```shell
  cd ~
  git  clone https://github.com/duanqiaobb/Mvim.git .vim
```

2. Link the ~.vimrc~ file to you home directory

```shell
  ln -sf  ~/.vim/.vimrc ~/.vimrc
```

3. You may need to initialize YoucompleteMe plugin for ~C/C++~ , ~Python~ , ~Go~ and ~Javascript~ (Tern supported) completion.

```shell
  cd ~/.vim/bundle/YoucompleteMe
  python install.py --clang-completer --tern-completer --gocode-completer
```
**Tips**
> The `YoucompleteMe`  need  clang for clang completion, so it may take some time to download the clang source file (Especially, for Chinese netizens afterGFW,it will take a long long time. You'd better prepared a proxy in advance for this installation process, :) ).

4. Enjoy it.

## Vim8 compiled and all configurations set up 

**Notice**
> This script only works on centos

**curl**

```shell
   curl https://raw.githubusercontent.com/duanqiaobb/Mvim/master/install | bash 
```
**wget**

```shell
   wget https://raw.githubusercontent.com/duanqiaobb/Mvim/master/install | bash  
```

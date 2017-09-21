# Mvim

**Mvim** is a composition of vim and some vim plugins, which I used it as my  daily development tool personally.

# Introduction

&ensp;&ensp;&ensp;&ensp;It's sufficient for me to write some `Java` , `PHP`, `C/C++` , `Python` , `Go` and `Javascript`. And you can feel free to tweak it to match your personal development requirements after `git clone` it.

# Usage

&ensp;&ensp;&ensp;&ensp;This repository is just a draft repositry, I just put  all plugins into one blanket, without catergorizing them.I will do it after if I have some time.</br>
&ensp;&ensp;&ensp;&ensp;If you want ot use it or you just don't want to collect these plugins by walking through all network corners, It's easy to set up by doing serveral steps as follow.

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

4. Enjoy it.


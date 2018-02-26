# Mvim

**Mvim** is a composition of vim and some vim plugins, which I used it as my  daily development tool personally.

# Introduction

&ensp;&ensp;&ensp;&ensp;It's sufficient for me to write some `Java` , `PHP`, `C/C++` , `Python` , `Go` and `Javascript`. And you can feel free to tweak it to match your personal development requirements after `git clone` it.

# Requirement

+ >= vim8 +python +python3


# Screenshot

1. Startup 

![startup.png](https://raw.githubusercontent.com/duanqiaobb/Mvim/master/screenshots/mvim-startup.png)


# Plugins 

&ensp;&ensp;&ensp;&ensp;All those plugins is folded by its usage.

+ basic ( for basic editing )

1.  [ack](https://github.com/mileszs/ack.vim.git)
2.  airline
3.  async 
4.  auto-pairs
5.  bufflist
6.  ctrlp
7.  emmet-vim
8.  gist-vim
9.  github.vim
10. indentLine
11. MatchTag
12. multiple-cursors
13. neocomplete.vim
14. nerdtree-ack
15. nerdtree
16. onehalf-theme
17. papercolor-theme
18. startuptime.vim
19. supertab
20. tagbar
21. ultisnips
22. undotree
23. vim-colors-solarised
24. vim-devicons
25. vim-glaive
27. vim-leader-guide
28. vim-localvimrc
29. vim-maktaba
30. vim-misc
31. vim-nerdtree-syntax-highlight
32. vim-reload
33. vim-rooter
34. vim-snippets
35. vim-startify
36. vim-surround
37. vim-syncopate
38. vimagit
39. vimproc.vim
40. webapi-vim
41. winmanager
42. dracula-theme

+ program ( for basic programming )

1. nerdcommenter
2. syntastic
3. vdebug
4. vim-unimpaired
5. YouCompleteMe

+ java

1. jcommenter.vim
2. vim-javacomplete2

+ php

1. php-documentor-vim
2. php_getset
3. phpcomplete.vim
4. phpcomplete-extended

+ js

1. vim-javascript
2. vim-jsbeautify
3. vim-jsdoc
4. vison

+ matlab

1. matlab-support
2. vim-matlab

+ markdown

1. vim-livedowm
2. vim-pandoc-syntax

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

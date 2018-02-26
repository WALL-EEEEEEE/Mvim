<div align='right'><strong>Language:</strong> English <a href="https://raw.githubusercontent.com/duanqiaobb/Mvim/master/lang/chinese.md">Chinese</div>

# Mvim

**Mvim** is a composition of vim and some vim plugins, which I used it as my  daily development tool personally.

# Introduction

&ensp;&ensp;&ensp;&ensp;It's sufficient for me to write some `Java` , `PHP`, `C/C++` , `Python` , `Go` and `Javascript`. And you can feel free to tweak it to match your personal development requirements after `git clone` it.

# Requirement

+ `>=vim8 +python +python3`


# Screenshot

1. **Startup**

![startup.png](https://raw.githubusercontent.com/duanqiaobb/Mvim/master/screenshots/mvim-startup.png)


# Plugins 

&ensp;&ensp;&ensp;&ensp;All those plugins is folded by its usage.What's more, all plugins is loaded lazily. it make vim work more glossily,and the first start is comparatively fast, either.

## basic ( for basic editing )

1.  [ack](https://github.com/mileszs/ack.vim.git)
2.  [airline](https://github.com/bling/vim-airline)
3.  [async](https://github.com/prabirshrestha/async.vim)
4.  [auto-pairs](https://github.com/jiangmiao/auto-pairs)
5.  [bufflist](https://github.com/roblillack/vim-bufferlist.git)
6.  [ctrlp](https://github.com/kien/ctrlp.vim)
7.  [emmet-vim](http://mattn.github.com/emmet-vim)
8.  [gist-vim ](https://github.com/mattn/gist-vim)
9.  [github.vim](https://github.com/albertorestifo/github.vim)
10. [indentLine](https://github.com/Yggdroot/indentLine)
11. [MatchTag](https://github.com/gregsexton/MatchTag)
12. [multiple-cursors](https://github.com/paradigm/vim-multicursor)
13. [neocomplete.vim](https://github.com/Shougo/neocomplete.vim)
14. [nerdtree-ack](https://github.com/tyok/nerdtree-ack)
15. [nerdtree](https://github.com/scrooloose/nerdtree)
16. [onehalf-theme](https://github.com/scrooloose/nerdtree)
17. [papercolor-theme](https://github.com/ashfinal/vim-colors-paper)
18. [startuptime.vim](https://github.com/tweekmonster/startuptime.vim)
19. [supertab](https://github.com/ervandew/supertab)
20. [tagbar](https://github.com/majutsushi/tagbar)
21. [ultisnips](https://github.com/SirVer/ultisnips)
22. [undotree](https://github.com/SirVer/ultisnips)
23. [vim-colors-solarised](https://github.com/altercation/vim-colors-solarized)
24. [vim-devicons](https://github.com/ryanoasis/vim-devicons)
25. [vim-glaive](https://github.com/google/vim-glaive)
27. [vim-leader-guide](https://github.com/hecal3/vim-leader-guide)
28. [vim-localvimrc](https://github.com/embear/vim-localvimrc)
29. [vim-maktaba](https://github.com/google/vim-maktaba)
30. [vim-misc](https://github.com/xolox/vim-misc)
31. [vim-nerdtree-syntax-highlight](https://github.com/tiagofumo/vim-nerdtree-syntax-highlight)
32. [vim-reload](https://github.com/xolox/vim-reload)
33. [vim-rooter](https://github.com/airblade/vim-rooter)
34. [vim-snippets](https://github.com/honza/vim-snippets)
35. [vim-startify](https://github.com/mhinz/vim-startify)
36. [vim-surround](https://github.com/tpope/vim-surround)
37. [vim-syncopate](https://github.com/google/vim-syncopate)
38. [vimagit](https://github.com/vim-scripts/vimagit)
39. [vimproc.vim](https://github.com/Shougo/vimproc.vim)
40. [webapi-vim](https://github.com/mattn/webapi-vim)
41. [winmanager](https://github.com/vim-scripts/winmanager)
42. [dracula-theme](https://github.com/dracula/vim/tree/b7e11c087fe2a9e3023cdccf17985704e27b125d)

## program (for basic programming)

1. [nerdcommenter](https://github.com/scrooloose/nerdcommenter)
2. [syntastic](https://github.com/vim-syntastic/syntastic)
3. [vdebug](https://github.com/joonty/vdebug)
4. [vim-unimpaired](https://github.com/tpope/vim-unimpaired)
5. [YouCompleteMe](https://github.com/Valloric/YouCompleteMe)

## java (for java programming)

1. [jcommenter.vim](https://github.com/vim-scripts/jcommenter.vim)
2. [vim-javacomplete2](https://github.com/artur-shaik/vim-javacomplete2)

## php (for php programming)

1. [php-documentor-vim](https://github.com/sumpygump/php-documentor-vim)
2. [php_getset](https://github.com/vim-scripts/php_getset.vim)
3. [phpcomplete.vim](https://github.com/shawncplus/phpcomplete.vim)
4. [phpcomplete-extended](https://github.com/m2mdas/phpcomplete-extended)

## js (for js programming)

1. [vim-javascript](https://github.com/pangloss/vim-javascript)
2. [vim-jsbeautify](https://github.com/maksimr/vim-jsbeautify)
3. [vim-jsdoc](https://github.com/heavenshell/vim-jsdoc)
4. [vison](https://github.com/Quramy/vison)

## matlab (for matlab programming)

1. [matlab-support](https://github.com/benjamin-heasly/matlab-support)
2. [vim-matlab](https://github.com/daeyun/vim-matlab)

## markdown (for markdown editing)

1. [vim-livedowm](https://github.com/shime/vim-livedown)
2. [vim-pandoc-syntax](https://github.com/vim-pandoc/vim-pandoc-syntax)

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

# Pull Request

&ensp;&ensp;&ensp;&ensp; If you have any useful plugins or ideas on my dotfiles, please don't hesitate to pull a request.

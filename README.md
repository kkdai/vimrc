vgod's vimrc
============
Author: Tsung-Hsiang (Sean) Chang <vgod@vgod.tw>

Fork me on GITHUB  https://github.com/vgod/vimrc.

ONE-STEP INSTALL
----------------

Use curl (for Mac OS X):

     curl -o - https://raw.githubusercontent.com/kkdai/vimrc/master/auto-install.sh | sh

or wget (for most UNIX platforms):

     wget -O - https://raw.githubusercontent.com/kkdai/vimrc/master/auto-install.sh | sh


MANUALLY INSTALL
----------------

1. Check out from github

        git clone git://github.com/kkdai/vimrc.git ~/.vim
        cd ~/.vim
        git submodule update --init

2. Install ~/.vimrc and ~/.gvimrc

        ./install-vimrc.sh

3. (Optional, if you want Command-T) Compile the Command-T plugin

        cd .vim/bundle/command-t/ruby/command-t
        ruby extconf.rb
        make

MANUALLY INSTALL ON WINDOWS
---------------------------

1. Check out from github

        cd C:\Program Files\Vim   (or your installed path to Vim)
        rmdir /s vimfiles         (This deletes your old vim configurations. If you want to keep it, use move instead of rmdir.)
        git clone git://github.com/kkdai/vimrc.git vimfiles
        git submodule update --init

2. Install vimrc. Add the following line at the end of C:\Program Files\Vim\vimrc.

        source $VIM/vimfiles/vimrc


  
INSTALL & UPGRADE PLUGIN BUNDLES
--------------------------------

All plugins (except vim-latex) were checked out as git submodules, 
which can be upgraded with `git pull`. For example, to upgrade Command-T 

     cd ~/.vim/bundle/command-t
     git pull

To install a new plugin as a git submoudle, type the following commands.

     cd ~/.vim
     git submodule add [GIT-REPOSITORY-URL] bundle/[PLUGIN-NAME]

HOW TO USE
----------

see the "USEFUL SHORTCUTS" section in vimrc to learn my shortcuts.

PLUGINS
-------

* [Pathogen](http://www.vim.org/scripts/script.php?script_id=2332): Pathogen let us install a plugin as a bundle in ~/.vim/bundle seprately.

* [Nerd Tree](http://www.vim.org/scripts/script.php?script_id=1658): A tree explorer plugin for navigating the filesystem.

  Useful commands:   
    `F3` toggles the NERDTree
    `:Bookmark [name]` - bookmark any directory as name   
    `:NERDTree [name]` - open the bookmark [name] in Nerd Tree   


* [TagBar](http://majutsushi.github.com/tagbar/): browsing the tags of source files ordered by classes.

  Useful commands:    
    `F4` toggles the TagBar

* [Nerd Commenter](https://github.com/scrooloose/nerdcommenter): Vim plugin for intensely orgasmic commenting.

  Useful commands:    
    `\c + spece` - Toggles the comment current selected in visual mode.    
    `\c + c`  - Comment current selected in visual mode.

Other good references
---------------------

* http://amix.dk/vim/vimrc.html
* http://spf13.com/post/perfect-vimrc-vim-config-file

License
-------

This vimrc project is released under [Creative Commons Attribution-ShareAlike 3.0 Unported License](http://creativecommons.org/licenses/by-sa/3.0/deed.en_US).


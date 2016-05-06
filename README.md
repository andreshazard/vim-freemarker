VIM-Freemarker
==============

When opening a .ftl file the filetype will be set to "freemarker"
this will activate the syntax highlighting.
The highlighting is focus on freemarker however it includes most common HTML tags

The plugin also has some functions for quick editing.

Installation
------------

You can use [Pathogen](https://github.com/tpope/vim-pathogen)
```
git clone https://github.com/andreshazard/vim-freemarker.git
~/.vim/bundle/vim-freemarker.vim
```
For [Vundle](https://github.com/VundleVim/Vundle.vim)
add to your vimrc
```
Plugin 'andreshazard/vim-freemarker'
```

Highlighting
------------

The color will depend on your colorscheme

![example](http://i.imgur.com/ZMyk3V6.png)

Functions and Mapping
---------------------

The plugin has the follwing functions that you can map in your vimrc :

:call FTLIf()

It will insert the basic if tags (#if-#else) and leave the cursor after the if tag
in insert mode
You can use this map in your vimrc

                    :nnoremap <leader>fi :call FTLIf()<CR>

:call FTLList()

It will insert the basic list tags(#list-#else-/#list). Cursor after the list tag in
insert mode
You can use this map in your vimrc

                    :nnoremap <leader>fl :call FTLList()<CR>

:call FTLBigList()

It will insert the new (since FreeMarker 2.3.23) list tags(#list-#items-/#items-#else-/#list).
Cursor after the list tag in insert mode
You can use this map in your vimrc

                    :nnoremap <leader>fb :call FTLBigList()<CR>

:call FTLSwitch()

It will insert the switch tags(#switch, 3 #case and #break, #default, /#switch).
Cursor after the switch tag in insert mode
You can use this map in your vimrc

                    :nnoremap <leader>fs :call FTLSwitch()<CR>

:call FTLAssign()

It will insert the assign tag and leave the cursor on insert mode

                    :nnoremap <leader>fa :call FTLAssign()<CR>


[![asciicast](https://asciinema.org/a/8j855own08xueb99zt5r4s1xa.png)](https://asciinema.org/a/8j855own08xueb99zt5r4s1xa)

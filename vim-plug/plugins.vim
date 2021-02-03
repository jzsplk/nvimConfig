" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

    " Better Syntax Support
    Plug 'sheerun/vim-polyglot'
    " File Explorer
    Plug 'scrooloose/NERDTree'
    " Auto pairs for '(' '[' '{'
    Plug 'jiangmiao/auto-pairs'

    " Surround
    Plug 'tpope/vim-surround'

    " Ranger
    " Plug 'kevinhwang91/rnvimr', {'do': 'make sync'}

    if exists('g:vscode')
    " Easy motion for VSCode
    " Plug 'asvetliakov/vim-easymotion'
    Plug 'ChristianChiarulli/vscode-easymotion'
    Plug 'machakann/vim-highlightedyank'
    else
      
    " Easymotion
    Plug 'easymotion/vim-easymotion'
    " FZF
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'yuki-ycino/fzf-preview.vim', { 'branch': 'release', 'do': ':UpdateRemotePlugins' }
    Plug 'junegunn/fzf.vim'

    " nvim-editcommand
    Plug 'brettanomyces/nvim-editcommand'

    " Terminal
    Plug 'voldikss/vim-floaterm'
    
    " See what keys do like in emacs
    Plug 'liuchengxu/vim-which-key'

    " Neovim in Browser
    " Plug 'glacambre/firenvim', { 'do': { _ -> firenvim#install(0) } }
    endif

call plug#end()

" Automatically install missing plugins on startup
autocmd VimEnter *
  \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \|   PlugInstall --sync | q
  \| endif

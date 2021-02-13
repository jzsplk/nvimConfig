
" General Settings
if !exists('g:vscode')
   source $HOME/.config/nvim/plug-config/polyglot.vim
endif
source $HOME/.config/nvim/vim-plug/plugins.vim
source $HOME/.config/nvim/general/settings.vim
" source $HOME/.config/nvim/general/functions.vim
source $HOME/.config/nvim/keys/mappings.vim
" source $HOME/.config/nvim/plug-config/rnvimr.vim

" try neo seting for vscode
if exists('g:vscode')
  " VS Code extension
  source $HOME/.config/nvim/vscode/settings.vim
  source $HOME/.config/nvim/plug-config/easymotion.vim
  source $HOME/.config/nvim/plug-config/highlightyank.vim
else
    
" Plugin Configuration
source $HOME/.config/nvim/keys/which-key.vim
source $HOME/.config/nvim/plug-config/easymotion.vim
source $HOME/.config/nvim/plug-config/floaterm.vim
source $HOME/.config/nvim/plug-config/coc/coc.vim
source $HOME/.config/nvim/plug-config/coc/coc-extensions.vim
    




endif

set nocompatible

" Setting up Vundle - the vim plugin bundler
filetype off
let s:vundlePresent=1
if !isdirectory(expand('~/.vim/bundle/Vundle.vim/.git'))
  echo 'Installing Vundle..'
  echo ''
  silent !mkdir -p ~/.vim/bundle
  silent !git clone https://github.com/VundleVim/Vundle.vim ~/.vim/bundle/Vundle.vim
  silent !mkdir -p ~/.vim/undo
  silent !mkdir -p ~/.vim/tmp
  silent !mkdir -p ~/.vim/sessions
  let s:vundlePresent=0
endif
set runtimepath+=~/.vim/bundle/Vundle.vim/
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

" Functionality
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'ctrlpvim/ctrlp.vim'
" Plugin 'scrooloose/syntastic'
Plugin 'bling/vim-airline'
Plugin 'wesQ3/vim-windowswap'
Plugin 'heavenshell/vim-jsdoc'
Plugin 'tmux-plugins/vim-tmux-focus-events'
Plugin 'airblade/vim-gitgutter'
Plugin 'Chiel92/vim-autoformat'
Plugin 'blueyed/vim-diminactive'
Plugin 'Raimondi/delimitMate'
Plugin 'Valloric/YouCompleteMe'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-rhubarb'
Plugin 'tomtom/tcomment_vim'
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-session'
Plugin 'ryanoasis/vim-devicons'
Plugin 'matze/vim-move'
Plugin 'w0rp/ale'
Plugin 'ternjs/tern_for_vim'
Plugin 'majutsushi/tagbar'
Plugin 'behcet/vim-istanbul'
Plugin 'chrisbra/Colorizer'

" Syntax
Plugin 'pearofducks/ansible-vim'
Plugin 'digitaltoad/vim-jade'
Plugin 'vim-scripts/haproxy'
Plugin 'chr4/nginx.vim'
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
Plugin 'tmux-plugins/vim-tmux'
Plugin 'kchmck/vim-coffee-script'
Plugin 'kylef/apiblueprint.vim'
Plugin 'GutenYe/json5.vim'

" Themes
" Plugin 'w0ng/vim-hybrid'
" Plugin 'altercation/vim-colors-solarized'
" Plugin 'whatyouhide/vim-gotham'
" Plugin 'zenorocha/dracula-theme', {'rtp': 'vim/'}
" Plugin 'kristijanhusak/vim-hybrid-material'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'morhetz/gruvbox'
Plugin 'arcticicestudio/nord-vim'
Plugin 'chriskempson/base16-vim'
Plugin 'metalelf0/base16-black-metal-scheme'

if s:vundlePresent == 0
  echo 'Installing Plugins, please ignore key map error messages'
  echo ''
  :PluginInstall
endif
" Setting up Vundle - the vim plugin bundler end

" Wrap up Vundle
call vundle#end()

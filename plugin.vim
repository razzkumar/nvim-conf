
if ! filereadable(expand('~/.config/nvim/autoload/plug.vim'))
	echo "Downloading junegunn/vim-plug to manage plugins..."
	silent !mkdir -p ~/.config/nvim/autoload/
	silent !curl "https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim" > ~/.config/nvim/autoload/plug.vim
	autocmd VimEnter * PlugInstall
endif

call plug#begin('~/.config/nvim/plugged')
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-commentary'
Plug 'scrooloose/nerdtree'
"Plug 'junegunn/goyo.vim'
Plug 'PotatoesMaster/i3-vim-syntax'
"Plug 'jreybert/vimagit'
"Plug 'lukesmithxyz/vimling'
Plug 'vimwiki/vimwiki'
Plug 'bling/vim-airline'
Plug 'kovetskiy/sxhkd-vim'

Plug 'neoclide/coc.nvim', {'branch': 'release'}
"Plug 'Shougo/denite.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'ryanoasis/vim-devicons'
Plug 'airblade/vim-gitgutter'
"Plug 'ctrlpvim/ctrlp.vim' " fuzzy find files
Plug 'scrooloose/nerdcommenter'

Plug 'morhetz/gruvbox'
Plug 'ayu-theme/ayu-vim'
Plug 'HerringtonDarkholme/yats.vim' " TS Syntax
"Plug 'ekalinin/Dockerfile.vim'
Plug 'suan/vim-instant-markdown', {'for': 'markdown'}
Plug 'hashivim/vim-terraform'
"Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
"Plug 'camspiers/lens.vim'
Plug 'Glench/Vim-Jinja2-Syntax'
"Plug 'rrethy/vim-hexokinase', { 'do': 'make hexokinase' }
"Plug 'metakirby5/codi.vim' " quokka like
"Plug 'wesQ3/vim-windowswap'
Plug 'chrisbra/csv.vim'
"Plug 'voldikss/vim-floaterm'
Plug 'mlaursen/vim-react-snippets'
"Plug 'terryma/vim-multiple-cursors'
"Plug 'jiangmiao/auto-pairs'
Plug 'rhysd/git-messenger.vim'
Plug 'alvan/vim-closetag'
"Plug 'glacambre/firenvim', { 'do': { _ -> firenvim#install(69) } }

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'stsewd/fzf-checkout.vim'
call plug#end()


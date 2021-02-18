
" Source
" autocmd! bufwritepost init.vim source %

  let mapleader =","

" Better copy & paste
" When you want to paste large blocks of code into vim, press F2 before you
" paste. At the bottom you should see ``-- INSERT (paste) --``.
  set pastetoggle=<F2>

" easier moving of code blocks
" then press ``>`` several times.
  vnoremap < <gv  " better indentation
  vnoremap > >gv  " better indentation

" disable swap files
  set nobackup
  set noswapfile
  set backspace=indent,eol,start

" autocmd BufWritePre * StripWhitespace

" ------Split Management-----
  set splitbelow
  set splitright
  map <c-j> <c-w>j
  map <c-k> <c-w>k
  map <c-l> <c-w>l
  map <c-h> <c-w>h

"Split window
  nmap ss :split<Return><C-w>w
  nmap sv :vsplit<Return><C-w>w
" Move window
  map sh <C-w>h
  map sk <C-w>k
  map sj <C-w>j
  map sl <C-w>l

" Compile node
  map <leader>t :!npm run test<CR>
  map <leader>b :!npm run build<CR>

" Replace all is aliased to S.
	nnoremap S :%s//g<Left><Left>

" Compile document, be it groff/LaTeX/markdown/etc.
	map <leader>c :w! \| !compiler <c-r>%<CR>

" Open corresponding .pdf/.html or preview
	map <leader>p :!opout <c-r>%<CR><CR>


" Some basics:
	nnoremap c "_c
	set nocompatible
	filetype plugin on
	syntax on
	set encoding=utf-8
	set number relativenumber
	set go=a
	set mouse=a
	set hlsearch
	set ignorecase
	set smartcase
	set incsearch
	nmap <Leader><space> :nohlsearch<cr>

	set magic		" Enable extended regexp
	set mousehide		" Hide the mouse pointe while typing
	set nostartofline 	" Keep the cursor on the same column
	set ruler
	set scrolloff=5		" When scrolling, keep the cursor
	set numberwidth=5	" Increase the minimal number of columns use for the `line number`
	set shortmess=aAItW     " Avoid all the hit-enter prompts
	set showcmd             " Show the command being typed
	set clipboard+=unnamedplus
	set smarttab
	set cindent
	set tabstop=2
	set shiftwidth=2
" always uses spaces instead of tab characters
	set expandtab
	set wrap
	set textwidth=80
	set colorcolumn=80

  set termguicolors     " enable true colors support
  "set background=light
  set background=dark
	inoremap jk <ESC>

  nmap <leader>fg :%!grep <c-r>=expand("<cword>")<cr>
" Switch tab
  nmap <S-Tab> :bprevious<Return>
  "nmap <C-Tab> :bnext<CR>

" Buffer management
  set hidden
  set confirm
  set wildcharm=<C-a>
  nnoremap <F10> :b <C-a>

" Go to tab by number
	 noremap <leader>p :bprevious<CR>
   nnoremap <Leader>b :bp<CR>
   nnoremap <Leader>g :e#<CR>
	 noremap <leader>1 :1b<CR>
	 noremap <leader>2 :2b<CR>
	 noremap <leader>3 :3b<CR>
	 noremap <leader>4 :4b<CR>
	 noremap <leader>5 :5b<CR>
	 noremap <leader>6 :6b<CR>
	 noremap <leader>7 :7b<CR>
	 noremap <leader>8 :8b<CR>
	 noremap <leader>9 :9b<CR>
	 noremap <leader>0 :10b<cr>
 	 set listchars=eol:$
   set laststatus=2 statusline=%02n:%<%f\ %h%m%r%=%-14.(%l,%c%V%)\ %P

" Splits open at the bottom and right, which is non-retarded, unlike vim defaults.
	set splitbelow splitright

"Config for the terminal mode
  if has('nvim')
    tnoremap <ESC> <C-\><C-n>
    tnoremap <C-]> <ESC>
    "Switching between split window
    tnoremap <A-h> <c-\><c-n><c-w>h
    tnoremap <A-j> <c-\><c-n><c-w>j
    tnoremap <A-k> <c-\><c-n><c-w>k
    tnoremap <A-l> <c-\><c-n><c-w>l
    noremap <A-h> <c-w>h
    noremap <A-j> <c-w>j
    noremap <A-k> <c-w>k
    noremap <A-l> <c-w>l
 endif

  nnoremap <C-`> :below term <CR>
  nnoremap <silent> <Leader>= :exe "resize " . (winheight(0) * 3/2)<CR>
  nnoremap <silent> <Leader>- :exe "resize " . (winheight(0) * 2/3)<CR>

au BufNewFile,BufRead Jenkinsfile setf groovy

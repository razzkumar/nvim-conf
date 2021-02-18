" Commnet
	vmap <C-z> <plug>NERDCommenterToggle
	nmap <C-z> <plug>NERDCommenterToggle
	vmap <leader>z <plug>NERDCommenterToggle
	nmap <leader>z <plug>NERDCommenterToggle

" Enable autocompletion:
	set wildmode=longest,list,full
" Disables automatic commenting on newline:
	autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

  map <leader>o :setlocal spell! spelllang=en_us<CR>

  set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux
  "set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe  " Windows

  let g:ctrlp_custom_ignore = {
    \ 'dir':  '\v[\/]\.(git|hg|svn|venv|env)|node_modules|venv$',
    \ 'file': '\v\.(exe|so|dll)$',
    \ 'link': 'some_bad_symbolic_links',
    \ }
	map <leader>n :CtrlPBuffer<CR>
	map <C-b> :CtrlPBuffer<CR>

" Nerd tree
  autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
	nmap <C-n> :NERDTreeToggle<CR>
	nmap <leader>f :NERDTreeFind<CR>
	let g:NERDTreeIgnore = ['^node_modules$']

" Check file in shellcheck:
	map <leader>s :!clear && shellcheck %<CR>

  " Runs a script that cleans out tex build files whenever I close out of a .tex file.
	autocmd VimLeave *.tex !texclear %

" Ensure files are read as what I want:
	let g:vimwiki_ext2syntax = {'.Rmd': 'markdown', '.rmd': 'markdown','.md': 'markdown', '.markdown': 'markdown', '.mdown': 'markdown'}
	map <leader>v :VimwikiIndex
"  List are in $OS-setting.vim

" Automatically deletes all trailing whitespace on save.
	autocmd BufWritePre * %s/\s\+$//e

" When shortcut files are updated, renew bash and ranger configs with new material:
	autocmd BufWritePost files,directories !shortcuts
" Run xrdb whenever Xdefaults or Xresources are updated.
	autocmd BufWritePost *Xresources,*Xdefaults !xrdb %
" Update binds when sxhkdrc is updated.
	autocmd BufWritePost *sxhkdrc !pkill -USR1 sxhkd

" Instant Markdown preview
"let g:instant_markdown_autostart = 0

" Import required on save
" autocmd BufWritePre *.go :call CocAction('runCommand', 'editor.action.organizeImport')
  let g:lens#width_resize_max = 90
  let g:lens#width_resize_min = 5
  let g:lens#disabled_filetypes = ['nerdtree', 'fzf']

" Git Gutter
  highlight GitGutterAdd guifg=#009900 ctermfg=Green
  highlight GitGutterChange guifg=#bbbb00 ctermfg=Yellow
  highlight GitGutterDelete guifg=#ff2222 ctermfg=Red
  nmap ) <Plug>(GitGutterNextHunk)
  nmap ( <Plug>(GitGutterPrevHunk)
  let g:gitgutter_enabled = 1
  let g:gitgutter_map_keys = 0
  let g:gitgutter_highlight_linenrs = 1

" ------Vim Auto Closetag------
" filenames like *.xml, *.html, *.xhtml, ...
" These are the file extensions where this plugin is enabled.
  let g:closetag_filenames = '*.html,*.xhtml,*.phtml,*.js'

" filenames like *.xml, *.xhtml, ...
" This will make the list of non-closing tags self-closing in the specified files.
  let g:closetag_xhtml_filenames = '*.xhtml,*.jsx,*.js'

" filetypes like xml, html, xhtml, ...
" These are the file types where this plugin is enabled.
  let g:closetag_filetypes = 'html,xhtml,phtml,js'

" filetypes like xml, xhtml, ...
" This will make the list of non-closing tags self-closing in the specified files.
  let g:closetag_xhtml_filetypes = 'xhtml,jsx,js'

" integer value [0|1]
" This will make the list of non-closing tags case-sensitive (e.g. `<Link>` will be closed while `<link>` won't.)
  let g:closetag_emptyTags_caseSensitive = 1

" dict
 " Disables auto-close if not in a "valid" region (based on filetype)
  let g:closetag_regions = {
      \ 'typescript.tsx': 'jsxRegion,tsxRegion',
      \ 'javascript.jsx': 'jsxRegion',
      \ }

" Shortcut for closing tags, default is '>'
  let g:closetag_shortcut = '>'
" Add > at current position without closing the current tag, default is ''
  let g:closetag_close_shortcut = '<leader>>'

" vim-fugitive
  nmap <leader>gh :diffget //3<CR>
  nmap <leader>gu :diffget //2<CR>
  nmap <leader>gs :G<CR>

let g:fzf_layout = { 'window' : { 'width': 0.8, 'height': 0.8} }
let $FZF_DEFAULT_OPTS="--reverse"
nnoremap <leader>gc :GCheckout<CR>
"let ayucolor="light"  " for might be mirage dark
"colorscheme ayu

colorscheme gruvbox

" Git Messenger
  noremap <C-g> :GitMessenger<CR>
  let g:git_messenger_no_default_mappings = v:true

let g:terraform_fmt_on_save=1

" Config for the firevim

augroup FIRE_VIM
  autocmd!

  au BufEnter github.com_*.txt set filetype markdown
  au BufEnter teti.es_*.txt set filetype typescript
augroup END


  autocmd BufRead,BufNewFile /tmp/calcurse*,~/.calcurse/notes/* set filetype=markdown
	autocmd BufRead,BufNewFile *.ms,*.me,*.mom,*.man set filetype=groff
	autocmd BufRead,BufNewFile *.tex set filetype=tex

" Save file as sudo on files that require root permission
	cnoremap w!! execute 'silent! write !sudo tee % >/dev/null' <bar> edit!

	map <leader>c :w! \| !compiler <c-r>%<CR>

" Open corresponding .pdf/.html or preview
	map <leader>p :!opout <c-r>%<CR><CR>

" Toggle autocompler
  map <leader>ab :!setsid autocompile % &<CR>

" Runs a script that cleans out tex build files whenever I close out of a .tex file.
	autocmd VimLeave *.tex !texclear %

" Open my bibliography file in split
"map <leader>b :vsp<space>$BIB<CR>
"map <leader>r :vsp<space>$REFER<CR>

" When shortcut files are updated, renew bash and ranger configs with new material:
	autocmd BufWritePost files,directories !shortcuts
" Run xrdb whenever Xdefaults or Xresources are updated.
	autocmd BufWritePost *Xresources,*Xdefaults !xrdb %
" Update binds when sxhkdrc is updated.
	autocmd BufWritePost *sxhkdrc !systemctl --user reload sxhkd

if has('persistent_undo')
	set undofile
endif
set undodir=$HOME/.config/nvim/undo_files

let g:vimwiki_list = [{'path': '$HOME/vimwiki', 'syntax': 'markdown', 'ext': '.md'}]

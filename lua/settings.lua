--vim.o.iskeyword="+=-"                     --treat dash separated words as a word text object"
--vim.o.shortmess="c"                        --Don't pass messages to |ins-completion-menu|.

--vim.o.formatoptions="cro"                  --Stop newline continution of comments
vim.o.hidden=true                              --Required to keep multiple buffers open multiple buffers
vim.o.wrap=false                              --Display long lines as just one line
--vim.o.whichwrap="+=<,>,[,],h,l"
vim.o.encoding="utf-8"                      --The encoding displayed1
vim.o.pumheight=10                        --Makes popup menu smaller
vim.o.fileencoding="utf-8"                  --The encoding written to file
vim.o.ruler=true              		               --      " Show the cursor position all the time
--vim.o.spelllang=en_us
vim.o.cmdheight=2                         --More space for displaying messages
-- vim.o.mouse="a"                             --Enable your mouse
vim.o.splitbelow=true                          --Horizontal splits will automatically be below
vim.o.termguicolors=true
vim.o.splitright=true                          --Vertical splits will automatically be to the right
--vim.o.t_Co="256"                            --Support 256 colors
vim.o.conceallevel=0                      --So that I can see `` in markdown files
vim.o.tabstop=2                           --Insert 2 spaces for a tab
vim.o.shiftwidth=2                        --Change the number of space characters inserted for indentation
vim.o.smarttab=true                            --Makes tabbing smarter will realize you have 2 vs 4
vim.o.expandtab=true                           --Converts tabs to spaces
vim.o.smartindent=true                         --Makes indenting smart
vim.o.autoindent=true                          --Good auto indent
vim.o.laststatus=2                        --Always display the status line
vim.o.textwidth=80
vim.o.colorcolumn='80'
--vim.o.number=true                              --Line numbers
--
vim.wo.number = true
vim.o.cursorline=true                          --Enable highlighting of the current line
vim.o.background="dark"                     --tell vim what the background color looks like
vim.o.showtabline=2                       --Always show tabs
vim.o.showmode=false                          --We don't need to see things like -- INSERT -- anymore
vim.o.backup=false                            --This is recommended by coc
vim.o.writebackup=false                       --This is recommended by coc
vim.wo.signcolumn="yes"                      --Always show the signcolumn, otherwise it would shift the text each time
vim.o.updatetime=300                      --Faster completion
vim.o.timeoutlen=1000                      --By default timeoutlen is 1000 ms
vim.o.clipboard="unnamedplus"               --Copy paste between vim and everything else
vim.o.incsearch=true
vim.o.relativenumber=true
vim.o.guifont="JetBrainsMono\\ Nerd\\ Font\\ Mono:h18"

vim.g.terraform_fmt_on_save=1

vim.g.jsdoc_lehre_path="/home/razzkumar/.config/nvm/versions/node/v16.3.0/bin/lehre"
vim.g.vimwiki_list = {
	    {
		    path = '/home/razzkumar/play/wiki',
		    syntax = 'markdown',
		    ext = '.md',
	    }
	}

-- Golang Settings
-- vim.g.go_list_type = "quickfix"         -- Error lists are of type quickfix
-- vim.g.go_fmt_command = "goimports"      -- automatically format and rewrite improrts

--[[ vim.g.go_auto_sameids = 1               -- Highlight matching identifiers
vim.g.go_def_mapping_enabled = 0        -- lua.lsp will do `gd`
 ]]
-- vim.g.go_info_mode=1
vim.cmd([[
"  autocmd! bufwritepost init.lua source %

 " au BufNewFile,BufRead Jenkinsfile setf groovy
  nmap <leader>fg :%!grep <c-r>=expand("<cword>")<cr>
  noremap ; :

" Automatically deletes all trailing whitespace on save.
	autocmd BufWritePre * %s/\s\+$//e


" When shortcut files are updated, renew bash and ranger configs with new material:
	autocmd BufWritePost files,directories !shortcuts
  map <F4> :execute "vimgrep /" . expand("<cword>") . "/j **" <Bar> cw<CR>

nnoremap <M-`> :below term <CR>
nnoremap <silent> <Leader>= :exe "resize " . (winheight(0) * 3/2)<CR>
nnoremap <silent> <Leader>- :exe "resize " . (winheight(0) * 2/3)<CR>
]])

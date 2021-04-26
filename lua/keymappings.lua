vim.api.nvim_set_keymap('n', '<Space>', '<NOP>', { noremap = true, silent = true })
vim.g.mapleader = ','

-- no hl
vim.api.nvim_set_keymap('n', '<Leader>h', ':set hlsearch!<CR>', { noremap = true, silent = true })

-- explorer
vim.api.nvim_set_keymap('n', '<Leader>e', ':NvimTreeToggle<CR>', { noremap = true, silent = true })

-- " Replace all is aliased to S.
vim.api.nvim_set_keymap('n','S', ':%s//g<Left><Left>',{noremap=true})

-- " Compile document, be it groff/LaTeX/markdown/etc.
vim.api.nvim_set_keymap('n','<leader>c', ':w! | !compiler "<c-r>%"<CR>',{ noremap = true, silent = true })

-- " Open corresponding .pdf/.html or preview
vim.api.nvim_set_keymap('n','<leader>p',':!opout <c-r>%<CR><CR>',{ noremap = true, silent = true })

-- better window movement
vim.api.nvim_set_keymap('n', '<C-h>', '<C-w>h', { silent = true })
vim.api.nvim_set_keymap('n', '<C-j>', '<C-w>j', { silent = true })
vim.api.nvim_set_keymap('n', '<C-k>', '<C-w>k', { silent = true })
vim.api.nvim_set_keymap('n', '<C-l>', '<C-w>l', { silent = true })

-- better indenting
vim.api.nvim_set_keymap('v', '<', '<gv', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '>', '>gv', { noremap = true, silent = true })

-- I hate escape
vim.api.nvim_set_keymap('i', 'jk', '<ESC>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', 'kj', '<ESC>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', 'jj', '<ESC>', { noremap = true, silent = true })

-- Tab switch buffer
vim.api.nvim_set_keymap('n', '<TAB>', ':bnext<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<S-TAB>', ':bprevious<CR>', { noremap = true, silent = true })

-- Move selected line / block of text in visual mode
vim.api.nvim_set_keymap('x', 'K', ':move \'<-2<CR>gv-gv\'', { noremap = true, silent = true })
vim.api.nvim_set_keymap('x', 'J', ':move \'>+1<CR>gv-gv\'', { noremap = true, silent = true })

-- TAB Complete
--vim.api.nvim_set_keymap('i', '<expr><TAB>', 'pumvisible() ? \"\\<C-n>\" : \"\\<TAB>\"', { noremap = true, silent = true })

-- Telescope
vim.api.nvim_set_keymap('n','<C-b>', ':Telescope buffers<CR>',{ noremap = true, silent = true })
vim.api.nvim_set_keymap('n','<leader>ff', ':Telescope find_files<CR>',{})
vim.api.nvim_set_keymap('n','<leader>fg', ':Telescope git_files<CR>',{})
vim.api.nvim_set_keymap('n','<leader>gb', ':Telescope git_branches<CR>',{})
vim.api.nvim_set_keymap('n','<leader>gs', ':Telescope git_status<CR>',{})
vim.api.nvim_set_keymap('n','<leader>fr', ':Telescope registers<CR>',{})
vim.api.nvim_set_keymap('n','<leader>gcc', ':Telescope git_commits<CR>',{})

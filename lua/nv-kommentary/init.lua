vim.g.kommentary_create_default_mappings = false
vim.api.nvim_set_keymap("n", "<C-z>", "<Plug>kommentary_line_default", {})
vim.api.nvim_set_keymap("v", "<C-z>", "<Plug>kommentary_visual_default",{})

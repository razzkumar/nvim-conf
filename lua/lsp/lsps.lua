local lspconf = require'lspconfig'

lspconf.bashls.setup{}
lspconf.dockerls.setup{}
lspconf.gopls.setup{}
lspconf.pyright.setup{}
lspconf.tsserver.setup{}
lspconf.jsonls.setup {
    commands = {
      Format = {
        function()
          vim.lsp.buf.range_formatting({},{0,0},{vim.fn.line("$"),0})
        end
      }
    }
}
-- require'lspconfig'.rust_analyzer.setup{}
lspconf.terraformls.setup{}


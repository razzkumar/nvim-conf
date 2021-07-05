local lspconf = require'lspconfig'

lspconf.bashls.setup{}
lspconf.dockerls.setup{}
lspconf.gopls.setup{
  cmd = {"/home/razzkumar/go/bin/gopls"};
}
lspconf.pyright.setup{}
lspconf.tsserver.setup{}
lspconf.ccls.setup{}
-- lspconf.cssls.setup{}
lspconf.jsonls.setup {
    commands = {
      Format = {
        function()
          vim.lsp.buf.range_formatting({},{0,0},{vim.fn.line("$"),0})
        end
      }
    }
}
lspconf.yamlls.setup{
   cmd = { "/home/razzkumar/.yarn/bin/yaml-language-server", "--stdio" },
   settings = {
        yaml = {
           schemas = { kubernetes = "/*.yaml" },
      }
  }
}
-- require'lspconfig'.rust_analyzer.setup{}
lspconf.terraformls.setup{}
lspconf.sqls.setup{
  cmd = {"/home/razzkumar/go/bin/sqls"};
}

lspconf.powershell_es.setup{
  bundle_path = '/home/razzkumar/.local/src/PWSHEditorServices',
}
--[[
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

require'lspconfig'.html.setup {
  capabilities = capabilities,
} ]]

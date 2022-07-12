local status_ok, lspconfig = pcall(require, "lspconfig")
if not status_ok then
  return
end

-- Enable (broadcasting) snippet capability for completi
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

lspconfig.html.setup({
  capabilities = capabilities,
})

lspconfig.cssls.setup({
  capabilities = capabilities,
})

lspconfig.jsonls.setup({
  capabilities = capabilities,
}) --> ({

require("user.lsp.configs")
require("user.lsp.handlers").setup()
require("user.lsp.null-ls")

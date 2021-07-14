--Enable (broadcasting) snippet capability for completion

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.codeLens = {
  dynamicRegistration = false,
}
capabilities.textDocument.completion.completionItem.snippetSupport = true
capabilities.textDocument.completion.completionItem.resolveSupport = {
  properties = {
    'documentation',
    'detail',
    'additionalTextEdits',
  }
}

return {capabilities = capabilities}

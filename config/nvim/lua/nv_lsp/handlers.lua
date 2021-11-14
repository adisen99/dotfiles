vim.lsp.handlers["textDocument/definition"] = function(_, _, result)
  if not result or vim.tbl_isempty(result) then
    print "[LSP] Could not find definition"
    return
  end

  if vim.tbl_islist(result) then
    vim.lsp.util.jump_to_location(result[1])
  else
    vim.lsp.util.jump_to_location(result)
  end
end

-- vim.lsp.handlers["textDocument/definition"] = vim.lsp.with(
--   vim.lsp.handlers.location, {
--     location_callback = function(location)
--       vim.cmd [[vsplit]]
--       vim.lsp.util.jump_to_location(location)
--     end
--   }
-- )

-- Normal configuration, but for now testing out workspace configuration.
-- vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
--   vim.lsp.diagnostic.on_publish_diagnostics, {
--     signs = {
--       severity_limit = "Error",
--     },
--     -- virtual_text = {
--     --   severity_limit = "Warning",
--     -- },
--   }
-- )
vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
  require("lsp_extensions.workspace.diagnostic").handler,
  {
    signs = {
      severity_limit = "Error",
    },
    underline = {
      severity_limit = "Warning",
    },
    virtual_text = true,
  }
)


function DoSomeLens()
  print "Lens Requesting..."

  vim.lsp.buf_request(0, "textDocument/codeLens", {
    textDocument = vim.lsp.util.make_text_document_params(),
  })

  print "... Done"
end

vim.lsp.handlers["textDocument/codeLens"] = function(err, _, result)
  print "Code Lens..."
  print(result)
  print "...Code Lens"
end

-- TODO: Move to colorbuddy
vim.cmd [[highlight LspLinesDiagBorder guifg=white]]
vim.cmd [[highlight LineDiagTuncateLine guifg=white]]


GoImports = function(timeoutms)
  local context = { source = { organizeImports = true } }
  vim.validate { context = { context, "t", true } }
  local params = vim.lsp.util.make_range_params()
  params.context = context
  local method = "textDocument/codeAction"
  local resp = vim.lsp.buf_request_sync(0, method, params, timeoutms)
  if resp and resp[1] then
    local result = resp[1].result
    if result and result[1] then
      local edit = result[1].edit
      vim.lsp.util.apply_workspace_edit(edit)
    end
  end
  vim.lsp.buf.formatting()
end

---Force a specific language for ltex-ls
Set_ltex_lang = function(lang)
  local clients = vim.lsp.get_clients({ buffer = 0 })

  for _, client in ipairs(clients) do
    if client.name == "ltex" then
      client.config.settings.ltex.language = lang
      vim.lsp.buf_notify(0, "workspace/didChangeConfiguration", { settings = client.config.settings })
      return
    end
  end
end

Get_LSP_clients = function()
  return vim.lsp.get_clients({ buffer = 0 })
end

return M

local status, lsp = pcall(require, 'lspconfig')
if (not status) then return end
require("mason").setup()
require('mason-lspconfig').setup({
  ensure_installed = { 'lua_ls', 'clangd', 'tsserver', 'texlab' }
})

lsp.lua_ls.setup {
  settings = {
    Lua = {
      runtime = {
        -- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
        version = 'LuaJIT',
      },
      diagnostics = {
        -- Get the language server to recognize the `vim` global
        globals = { 'vim' },
      },
      workspace = {
        -- Make the server aware of Neovim runtime files
        library = vim.api.nvim_get_runtime_file("", true),
        checkThirdParty = false,
      },
      -- Do not send telemetry data containing a randomized but unique identifier
      telemetry = {
        enable = false,
      },
    },
    format = {
      enable = true,
      defaultConfig = {
        indent_style = 'space',
        indent_size = '2',
      },
    },
    completion = {
      enable = true,
      autoRequire = true,
      callSnippet = 'Both',
    },
  },
}

-- c/c++
lsp.clangd.setup {}

-- typescript
lsp.tsserver.setup {
  filetypes = { 'typescript', 'typescriptreact', 'typescript.tsx' },
  cmd = { 'typescript-language-server', '--stdio' }
}

lsp.texlab.setup {}

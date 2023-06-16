require 'nvim-treesitter.configs'.setup {
  ensure_installed = { "c", "cpp", "c_sharp", "lua", "vim", "typescript", "javascript", "python" },
  sync_install = false,
  auto_install = true,
  ignore_install = {
    'latex'
  },
  highlight = {
    enable = true,
    disable = { 'latex' }
  },
}

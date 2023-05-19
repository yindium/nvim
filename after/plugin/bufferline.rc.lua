vim.opt.termguicolors = true
local bufferline = require 'bufferline'

bufferline.setup{
  options = {
    mode = 'tabs',
    -- color_icons = true,
    style_preset = bufferline.style_preset.no_italic,
    -- show_buffer_close_icons = true,
    show_close_icon = false,
    show_tab_indicators = false,
    offsets = {
      {
        filetype = 'NvimTree',
        text = ' 󰉋 '  ,
        text_align = 'right',
        seperator = true,
      }
    },
  }
}

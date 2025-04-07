-- local lualine = require('lualine')


require('lualine').setup {
  options = {
    icons_enabled = true,
    theme = 'auto',
    component_separators = { left = '', right = ''},
    section_separators = { left = '', right = ''},
    -- component_separators = { left = '|', right = '|'},
    -- section_separators = { left = '|', right = '|'},
    disabled_filetypes = {
      statusline = {},
      winbar = {},
    },
    ignore_focus = {},
    always_divide_middle = true,
    always_show_tabline = true,
    globalstatus = false,
    refresh = {
      statusline = 100,
      tabline = 100,
      winbar = 100,
    }
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch', 'diff', 'diagnostics'},
    lualine_c = {
        { 'filename', path = 1 },
        -- { 'buffers', show_filename_only = false, mode = 4,  use_mode_colors = true, symbols = {active = '%'}
            -- buffers_color = ,
          -- buffers_color = {
          --   -- Same values as the general color option can be used here.
          --   active = 'lualine_{section}_normal',     -- Color for active buffer.
          --   inactive = 'lualine_{section}_inactive', -- Color for inactive buffer.
          -- },
        -- }
    },
    lualine_x = {'encoding', 'fileformat', 'filetype'},
    lualine_y = {'progress', 'location'},
    lualine_z = {{ 'datetime', style = "%H:%M" }}
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {'filename'},
    lualine_x = {'location'},
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {},
  winbar = {},
  inactive_winbar = {},
  extensions = {'trouble', 'oil'}
}

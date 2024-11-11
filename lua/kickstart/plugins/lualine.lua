return {
  {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
      require('lualine').setup {
        options = {
          theme = 'palenight',
        },
        sections = {
          lualine_x = {
            {
              'buffers',
              buffers_color = {
                active = { fg = '#FFF7D1', bg = '#6A42C2', gui = 'bold' },
                inactive = { fg = '#A6AEBF', bg = '#243642' },
              },
            },
            { 'encoding', 'fileformat', 'filetype' },
            {
              require('noice').api.status.mode.get,
              cond = require('noice').api.status.mode.has,
              color = { fg = '#ff9e64' },
            },
          },
          lualine_c = {
            {
              'filename',
              path = 1,
            },
          },
          lualine_z = {
            { 'datetime', style = 'uk' },
          },
        },
      }
    end,
  },
}

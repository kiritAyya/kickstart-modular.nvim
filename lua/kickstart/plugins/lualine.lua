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

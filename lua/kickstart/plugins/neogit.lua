-- local user_config = vim.g.config.plugins.neogit or {}

local config = {
  enabled = true,
  keys = {
    { '<leader>g<Enter>', '<cmd>Neogit<cr>', desc = 'Neogit' },
  },
  opts = {},
}

-- local config = vim.tbl_deep_extend('force', default_config, user_config)

return {
  'NeogitOrg/neogit',
  cmd = 'Neogit',
  enabled = config.enabled,
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-telescope/telescope.nvim',
  },
  keys = config.keys,
  opts = config.opts,
  config = function(_, opts)
    require('neogit').setup(opts)
  end,
}

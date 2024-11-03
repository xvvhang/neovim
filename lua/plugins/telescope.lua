return {
  'nvim-telescope/telescope.nvim',
  branch = '0.1.x',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-treesitter/nvim-treesitter',
    'nvim-tree/nvim-web-devicons'
  },
  opts = {
    defaults = {
      prompt_prefix = ' ',
      selection_caret = ' ',
      multi_icon = ' ',
      borderchars = { '─', '│', '─', '│', '┌', '┐', '┘', '└' }
    }
  },
  cmd = {
    'Telescope'
  },
  keys = {
    { '<leader>f', '<CMD>Telescope find_files<CR>' },
    { '<leader>j', '<CMD>Telescope live_grep<CR>' },
    { '<leader>t', '<CMD>Telescope<CR>' }
  }
}

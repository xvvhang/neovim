return {
  'folke/tokyonight.nvim',
  config = function(_, opt)
    require('tokyonight').setup({
      lualine_bold = true,
      styles = {
        sidebars = 'dark',
        float = 'dark'
      }
    })
    vim.cmd[[colorscheme tokyonight-night]]
  end,
  lazy = false,
  priority = 1000
}

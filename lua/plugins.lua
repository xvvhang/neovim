local install = function()
  local path = vim.fn.stdpath('data') .. '/lazy/lazy.nvim'
  if not vim.loop.fs_stat(path) then
    vim.fn.system({
      'git',
      'clone',
      '--filter=blob:none',
      'https://github.com/folke/lazy.nvim.git',
      '--branch=stable',
      path,
    })
  end
  vim.opt.rtp:prepend(path)
end

local startup = function()
  local lazy = require('lazy')

  local plugins = {
    require('plugins.dressing'),
    require('plugins.tokyonight'),
    require('plugins.lualine'),
    require('plugins.neo-tree'),
    require('plugins.telescope'),
    require('plugins.nvim-bqf'),
    require('plugins.barbecue'),
    require('plugins.nvim-treesitter'),
    require('plugins.mason'),
    require('plugins.nvim-lspconfig'),
    require('plugins.lsp-signature'),
    require('plugins.lspecho'),
    require('plugins.nvim-cmp'),
    require('plugins.gitsigns'),
    require('plugins.lazygit'),
    require('plugins.flash'),
    require('plugins.smart-splits'),
    require('plugins.comment'),
    require('plugins.nvim-colorizer'),
    require('plugins.indent-blankline'),
    require('plugins.todo-comments'),
    require('plugins.render-markdown'),
  }

  local configs = {
    ui = {
      border = 'single',
      backdrop = 90,
      icons = {
        cmd = ' ',
        config = ' ',
        event = ' ',
        favorite = ' ',
        ft = ' ',
        init = ' ',
        import = ' ',
        keys = ' ',
        lazy = ' ',
        loaded = ' ',
        not_loaded = ' ',
        plugin = ' ',
        runtime = ' ',
        require = ' ',
        source = ' ',
        start = ' ',
        task = ' ',
        list = {
          '●',
          '',
          '',
          '',
        },
      }
    }
  }

  lazy.setup(plugins, configs)
end

install()

startup()


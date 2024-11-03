return {
  'nvim-treesitter/nvim-treesitter',
  dependencies = {
    'nvim-treesitter/nvim-treesitter-textobjects',
    {
      'windwp/nvim-autopairs',
      config = true,
      event = 'InsertEnter'
    },
    {
      'windwp/nvim-ts-autotag',
      config = true
    }
  },
  build = ':TSInstall',
  config = function()
    require('nvim-treesitter.configs').setup({
      ensure_installed = { 'c', 'lua' },
      highlight = {
        enable = true
      },
      incremental_selection = {
        enable = true,
        keymaps = {
          init_selection = 'C-n',
          node_incremental = '[n',
          scope_incremental = '<C-n><C-s>',
          node_decremental = ']n'
        }
      },
      indent = {
        enable = true
      },
      textobjects = {
        select = {
          enable = true,
          lookahead = true,
          keymaps = {
            ['af'] = '@function.outer',
            ['if'] = '@function.inner',
            ['ac'] = '@class.outer',
            ['ic'] = '@class.inner',
            ['as'] = '@scope'
          },
        },
        lsp_ierop = {
          enable = true,
          border = 'sinlge',
          floating_preview_opts = {
            border = 'single'
          },
          peek_definition_code = {
            ['<leader>df'] = '@function.outer',
            ['<leader>dF'] = '@class.outer',
          }
        }
      }
    })
  end
}

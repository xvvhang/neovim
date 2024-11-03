return {
  'hrsh7th/nvim-cmp',
  dependencies = {
    'hrsh7th/cmp-nvim-lsp',
    'hrsh7th/cmp-buffer',
    'hrsh7th/cmp-cmdline',
    'hrsh7th/cmp-path',
    'hrsh7th/cmp-vsnip',
    'hrsh7th/vim-vsnip',
    'rafamadriz/friendly-snippets',
    {
      'zbirenbaum/copilot-cmp',
      config = function()
        require('copilot_cmp').setup()
      end
    },
    'onsails/lspkind.nvim',
  },
  opts = function()
    local cmp = require('cmp')
    local lspkind = require('lspkind')

    local has_words_before = function()
      if vim.api.nvim_buf_get_option(0, 'buftype') == 'prompt' then return false end
      ---@diagnostic disable-next-line: deprecated
      local line, col = unpack(vim.api.nvim_win_get_cursor(0))
      return col ~= 0 and vim.api.nvim_buf_get_text(0, line-1, 0, line-1, col, {})[1]:match('^%s*$') == nil
    end

    return {
      snippet = {
        expand = function(args)
          vim.fn['vsnip#anonymous'](args.body)
        end,
      },
      preselect = cmp.PreselectMode.Item,
      mapping = cmp.mapping.preset.insert({
        ['<C-h>'] = cmp.mapping.open_docs(),
        ['<C-u>'] = cmp.mapping.scroll_docs(-4),
        ['<C-d>'] = cmp.mapping.scroll_docs(4),
        ['<C-j>'] = cmp.mapping.select_next_item(),
        ['<C-k>'] = cmp.mapping.select_prev_item(),
        ['<C-l>'] = cmp.mapping.complete(),
        ['<CR>'] = cmp.mapping.confirm({ select = true }),
        ['<Tab>'] = vim.schedule_wrap(function(fallback)
          if cmp.visible() and has_words_before() then
            cmp.select_next_item({ behavior = cmp.SelectBehavior.Select })
          else
            fallback()
          end
        end),
      }),
      formatting = {
        format = lspkind.cmp_format({
          mode = 'symbol_text',
          preset = 'default',
          ellipsis_char = '...',
          symbol_map = {
            Copilot = ''
          }
        })
      },
      sources = {
        {
          name = 'copilot',
          group_index = 1
        },
        {
          name = 'nvim_lsp',
          group_index = 1
        },
        {
          name = 'buffer',
          group_index = 2
        }
      },
      view = {
        docs = {
          auto_open = true
        }
      },
      window = {
        completion = {
          border = 'single',
          winhighlight = 'Border:Border'
        },
        documentation = {
          border = 'single',
          winhighlight = 'Border:Border'
        }
      },
      experimental = {
        ghost_text = true
      }
    }
  end,
  config = function(_, opts)
    local cmp = require('cmp')
    cmp.setup(opts)
    cmp.setup.cmdline('/', {
      mapping = cmp.mapping.preset.cmdline(),
      sources = {
        { name = 'buffer' }
      }
    })
    cmp.setup.cmdline(':', {
      mapping = cmp.mapping.preset.cmdline(),
      sources = {
        { name = 'path' },
        { name = 'cmdline' }
      },
      matching = { disallow_symbol_nonprefix_matching = false }
    })

    local cmp_autopairs = require('nvim-autopairs.completion.cmp')
    cmp.event:on(
      'confirm_done',
      cmp_autopairs.on_confirm_done()
    )

    vim.api.nvim_set_hl(0, 'CmpItemKindCopilot', { fg ='#4287f5' })
  end
}

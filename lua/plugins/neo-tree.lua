return {
'nvim-neo-tree/neo-tree.nvim',
  branch = 'v3.x',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons',
    'MunifTanjim/nui.nvim',
    {
      's1n7ax/nvim-window-picker',
      version = '2.x',
      config = function()
        require('window-picker').setup({
          filter_rules = {
            include_current_win = false,
            autoselect_one = true,
            bo = {
              filetype = { 'neo-tree', 'neo-tree-popup', 'notify' },
              buftype = { 'terminal', 'quickfix' },
            },
          }
        })
      end
    }
  },
  opts = {
    sources = { 'filesystem', 'buffers', 'git_status' },
    source_selector = {
      -- winbar = true,
      statusline = true,
      sources = {
        {
          source = 'filesystem',
          display_name = 'FILES'
        },
        {
          source = 'buffers',
          display_name = 'BUFFERS'
        },
        {
          source = 'git_status',
          display_name = 'GIT'
        },
        -- { source = 'document_symbols' },
      },
      separator = '',
      content_layout = 'center',
      tabs_layout = 'equal'
    },
    popup_border_style = 'single',
    default_component_configs = {
      indent = {
        expander_collapsed = '',
        expander_expanded = ''
      },
      icon = {
        folder_closed = '',
        folder_open = '',
        folder_empty = ''
      },
      modified = {
        symbol = ''
      },
      git_status = {
        symbols = {
          added     = '', -- or '✚', but this is redundant info if you use git_status_colors on the name
          modified  = '', -- or '', but this is redundant info if you use git_status_colors on the name
          deleted   = 'D',
          renamed   = 'R',
          untracked = 'U',
          ignored   = 'I',
          unstaged  = 'M',
          staged    = 'A',
          conflict  = 'C',
        }
      }
    },
    window = {
      width = 40,
      mappings = {
        ['<space>'] = {
          'toggle_preview',
          config = {
            use_float = true,
            use_image_nvim = true
          }
        },
        ['l'] = {
          'toggle_node',
          nowait = false
        },
        ['h'] = 'close_node',
        ['s'] = 'open_split',
        ['v'] = 'open_vsplit',
        ['['] = 'prev_source',
        [']'] = 'next_source',
        ['O'] = vim.ui.open and {
          function(state)
            local path = state.tree:get_node().path
            vim.ui.open(path)
          end,
          desc = "open with system default application",
        } or nil,
      }
    }
  },
  cmd = {
    'Neotree'
  },
  keys = {
    { '<leader>e', '<CMD>Neotree toggle<CR>' }
  }
}

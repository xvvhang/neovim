return {
  'nvim-tree/nvim-tree.lua',
  dependencies = {
    'nvim-tree/nvim-web-devicons'
  },
  opts = {
    select_prompts = true,
    view = {
      side = 'left',
      width = {
        min = 30,
        max = 50
      }
    },
    renderer = {
      full_name = true,
      special_files = {
        'package.json',
        'package-lock.json',
        'yarn.lock',
        'Cargo.toml',
        'Dockerfile',
        'README.md',
        '.gitignore',
      },
      hidden_display = 'all',
      indent_markers = { enable = true },
      icons = {
        show = { folder_arrow = false },
        git_placement = 'signcolumn',
        glyphs = {
          default = '',
          symlink = '',
          bookmark = '',
          modified = '',
          hidden = '',
          folder = {
            arrow_closed = '',
            arrow_open = '',
            default = '',
            open = '',
            empty = '',
            empty_open = '',
            symlink = '',
            symlink_open = '',
          },
          git = {
            unstaged = ' ',
            staged = ' ',
            unmerged = ' ',
            renamed = ' ',
            untracked = ' ',
            deleted = ' ',
            ignored = ' ',
          },
        }
      }
    }
  },
  cmd = {
    'NvimTreeToggle',
    'NvimTreeOpen',
    'NvimTreeFocus',
  },
  keys = {
    -- { '<leader>e', '<CMD>NvimTreeToggle<CR>' },
  }
}

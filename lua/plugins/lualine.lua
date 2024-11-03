return {
  'nvim-lualine/lualine.nvim',
  dependencies = {
    'nvim-tree/nvim-web-devicons',
  },
  opts = function()
    return {
      options = {
        icon_enable = true,
        component_separators = { left = '', right = '' },
        section_separators = { left = '', right = '' },
        globalstatus = true
      },
      sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = {
          {
            'branch',
            icon = ''
          },
          {
            'diff',
            colored = false,
            symbols = {
              added = ' ',
              modified = ' ',
              removed = ' '
            }
          },
          {
            'filename',
            file_status = true,
            path = 1,
            symbols = {
              modified = '[M]',
              readonly = '[R]',
              unnamed = 'Unnamed',
              newfile = 'Newfile'
            },
          },
          {
            'diagnostics',
            sources = { 'nvim_lsp' },
            symbols = {
              error = ' ',
              warn = ' ',
              info = ' ',
              hint = ' '
            },
            colored = false
          }
        },
        lualine_x = {
          {
            'filetype',
            colored = false
          },
          function()
            local readableClientNames = require('utils').readableClientNames
            local clients = vim.lsp.get_clients()
            if next(clients) == nil then
              return ''
            end
            local client_names = {}
            for _, client in pairs(clients) do
              if client.name ~= "copilot" then
                local readableClientName = readableClientNames[client.name]
                table.insert(client_names, readableClientName)
              end
            end
            return ' ' .. table.concat(client_names, ',')
          end,
          {
            'location',
            padding = { left = 0, right = 1 }
          },
          {
            'progress',
            padding = { left = 0, right = 1 }
          },
          'mode',
          function()
            return os.date('%R')
          end
        },
        lualine_y = {},
        lualine_z = {}
      },
    extensions = { 'lazy', 'man', 'mason', 'neo-tree', 'quickfix' }
    }
  end
}

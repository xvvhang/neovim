return {
  'lewis6991/gitsigns.nvim',
  opts = {
    current_line_blame = true,
    preview_config = {
      border = 'single'
    },
    on_attach = function()
      local gitsigns = require('gitsigns')
      vim.keymap.set('n', ']c', function ()
        if vim.wo.diff then
          vim.cmd.normal({']c', bang = true})
        else
          gitsigns.next_hunk()
        end
      end)
      vim.keymap.set('n', '[c', function ()
        if vim.wo.diff then
          vim.cmd.normal({'[c', bang = true})
        else
          gitsigns.prev_hunk()
        end
      end)
      vim.keymap.set('n', '<leader>gp', gitsigns.preview_hunk)
      vim.keymap.set('n', '<leader>gu', gitsigns.reset_hunk)
      vim.keymap.set('n', '<leader>gd', gitsigns.diffthis)
    end
  }
}

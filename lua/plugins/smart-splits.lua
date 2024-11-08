return {
  'mrjones2014/smart-splits.nvim',
  keys = {
    { '<A-h>', function() require('smart-splits').resize_left() end },
    { '<A-j>', function() require('smart-splits').resize_down() end },
    { '<A-k>', function() require('smart-splits').resize_up() end },
    { '<A-l>', function() require('smart-splits').resize_right() end },
    { '<C-h>', function() require('smart-splits').move_cursor_left() end },
    { '<C-l>', function() require('smart-splits').move_cursor_right() end },
    { '<C-j>', function() require('smart-splits').move_cursor_up() end },
    { '<C-k>', function() require('smart-splits').move_cursor_down() end }
  }
}

return {
  'folke/flash.nvim',
  event = 'VeryLazy',
  keys = {
    { 's', mode = { 'n', 'x', 'o' }, function() require('flash').jump() end }
  }
}


return {
  'numToStr/Comment.nvim',
  dependencies = {
    'JoosepAlviste/nvim-ts-context-commentstring'
  },
  opts = function()
    local ts = require('ts_context_commentstring.integrations.comment_nvim')
    return {
      toggler = {
        line = '<leader>mm',
        block = '<leader>m,'
      },
      opleader = {
        line = '<leader>mm',
        block = '<leader>m,'
      },
      mappings = {
        basic = true,
        extra = false
      },
      pre_hook = ts.create_pre_hook()
    }
  end,
  event = { 'BufReadPost', 'BufWritePost', 'BufNewFile' },
}

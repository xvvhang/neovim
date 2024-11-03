return {
  'folke/todo-comments.nvim',
  dependencies = {
    'nvim-lua/plenary.nvim'
  },
  opts = {
    signs = false,
    keywords = {
      FIX = {
        icon = '',
        color = 'error',
        alt = { 'FIXME', 'BUG', 'BUFFIX', 'FIXIT', 'ISSUE' }
      },
      TODO = {
        icon = '',
        color = 'info',
        alt = { 'NOTE' }
      },
      WARN = {
        icon = '',
        color = 'warning',
        alt = { 'WARNING', 'XXX' }
      },
      PERF = {
        icon = '',
        color = 'info',
        alt = { 'OPTIM', 'PERFORMANCE', 'OPTIMIZE' }
      }
    }
  }
}


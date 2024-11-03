return {
  'kdheepak/lazygit.nvim',
  dependencies = {
    'nvim-lua/plenary.nvim'
  },
  cmd = {
    'LazyGit',
    'LazyGitConfig',
    'LazyGitCurrentFile',
    'LazyGitFilter',
    'LazyGitFilterCurrentFile'
  },
  keys = {
    { '<leader>gg', '<CMD>LazyGit<CR>' },
    { '<leader>gf', '<CMD>LazyGitFilterCurrentFile<CR>' }
  }
}

return {
  'williamboman/mason.nvim',
  dependencies = {
    'williamboman/mason-lspconfig.nvim'
  },
  opts = {
    ui = {
      border = 'single',
      icons = {
        package_installed = '',
        package_pending = '',
        package_uninstalled = ''
      }
    }
  },
  cmd = {
    'Mason',
    'MasonUpdate',
    'MasonInstall',
    'MasonUninstall',
    'MasonUninstallAll',
    'MasonLog'
  }
}

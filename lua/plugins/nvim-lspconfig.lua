return {
  'neovim/nvim-lspconfig',
  dependencies = {
    'hrsh7th/nvim-cmp',
    {
      'williamboman/mason-lspconfig.nvim',
      opts = {
        ensure_installed = { 'lua_ls' }
      }
    }
  },
  config = function()
    local lspconfig = require('lspconfig')
    local window = require('lspconfig.ui.windows')
    window.default_options.border = 'single'
    window.default_options.title = true

    local cmp_capabilities = require('cmp_nvim_lsp').default_capabilities()
    local default_config = { capabilities = cmp_capabilities }

    local merge_config = function(config)
      local res = {}
      for k, v in pairs(default_config) do
        res[k] = v
      end
      for k, v in pairs(config) do
        res[k] = v
      end
      return res
    end

    lspconfig.astro.setup(default_config)
    lspconfig.bashls.setup(default_config)
    lspconfig.css_variables.setup(default_config)
    lspconfig.cssls.setup(default_config)
    lspconfig.dockerls.setup(default_config)
    lspconfig.graphql.setup(default_config)
    lspconfig.html.setup(default_config)
    lspconfig.jsonls.setup(default_config)
    lspconfig.rust_analyzer.setup(default_config)
    lspconfig.tailwindcss.setup(default_config)
    lspconfig.ts_ls.setup(default_config)
    lspconfig.vuels.setup(default_config)
    lspconfig.volar.setup(default_config)
    lspconfig.yamlls.setup(default_config)

    lspconfig.emmet_language_server.setup(merge_config({
      filetypes = { 'html', 'pug', 'css', 'scss', 'javascript', 'typescript', 'javascriptreact', 'typescriptreact', 'vue', 'astro' }
    }))

    lspconfig.lua_ls.setup(merge_config({
      settings = {
        Lua = {
          diagnostics = {
            globals = {'vim'}
          }
        }
      }
    }))

  end
}

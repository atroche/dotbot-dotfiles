(module dotfiles.plugin.lightspeed
  {require {
             lsputil lspconfig.util
             lightspeed lightspeed
             ; tsutils nvim-lsp-ts-utils
             util dotfiles.util
             cfgs lspconfig.configs}
   autoload {nvim aniseed.nvim
             }})

(lightspeed.setup {})

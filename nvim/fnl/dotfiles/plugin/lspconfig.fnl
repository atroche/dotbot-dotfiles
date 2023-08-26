(module dotfiles.plugin.lspconfig
        {require {lsputil lspconfig.util
                  lspconfig lspconfig
                  ; tsutils nvim-lsp-ts-utils
                  util dotfiles.util
                  cfgs lspconfig.configs}
         autoload {nvim aniseed.nvim}})

(defn set-keymaps
  [bufnr]
  (let [remap (fn [from to] (util.bufmap bufnr from to {:silent true}))]
    (remap :gD "lua vim.lsp.buf.declaration()")
    (remap :gd "lua vim.lsp.buf.definition()")
    (remap :gI "lua vim.lsp.buf.implementation()")))

(lspconfig.pyright.setup {})

(lspconfig.tsserver.setup {:on_attach (fn [client bufnr] ; (tsutils.setup) ; (tsutils.setup_client client)
                                        (set-keymaps bufnr))
                           :flags {:debounce_text_changes 150}})

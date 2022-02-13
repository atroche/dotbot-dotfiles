(module dotfiles.plugin.lspconfig
  {require {
             lsputil lspconfig.util
             lspconfig lspconfig
             cfgs lspconfig.configs}
   autoload {nvim aniseed.nvim
             }})
; salt-lsp custom config

(lspconfig.pyright.setup {})

; (local salt-lsp-config
;   {:default_config {:cmd ["salt_lsp_server" "--tcp"]
;                     :filetypes ["jinja" "sls"]
;                     :root_dir (lsputil.root_pattern ".git")}})
; 
; 
; (tset cfgs :salt_lsp salt-lsp-config)
; 
; 
; (lspconfig.salt_lsp.setup {})

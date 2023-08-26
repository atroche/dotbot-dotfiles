(module dotfiles.plugin.treesitter
        {require {treesitter nvim-treesitter
                  incr nvim-treesitter.incremental_selection
                  nvim aniseed.nvim
                  cfgs nvim-treesitter.configs}})

; set foldmethod=expr
; set foldexpr=nvim_treesitter#foldexpr()
(cfgs.setup {:ensure_installed [:lua :fennel :python :bash]
             :highlight {:enable true}
             :incremental_selection {:enable true}
             :indentation {:enable true}})

(set vim.o.foldlevel 20)
(set vim.o.foldmethod :expr)
(set vim.o.foldexpr "nvim_treesitter#foldexpr()")

(nvim.set_keymap :n :<localleader>j
                 ":lua require('nvim-treesitter.incremental_selection').init_selection()<cr>"
                 {:noremap true :silent true})

; weird that this won't work when run here, but will after nvim is fully launched.
; (vim.api.nvim_command "TSUpdate")

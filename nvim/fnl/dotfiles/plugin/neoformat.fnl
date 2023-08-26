(module dotfiles.plugin.neoformat
        {import-macros [[ac :aniseed.macros.autocmds]]
         autoload {c aniseed.core}})

(set vim.g.neoformat_basic_format_align true)
(set vim.g.neoformat_basic_format_retab true)
(set vim.g.neoformat_basic_format_trim true)
; (set vim.g.neoformat_nix_nixpkgs_fmt {:exe :nixpkgs-fmt :args ["--width" "120"] :stdin 1})

(set vim.g.neoformat_nix_nixpkgs_fmt {:exe :nixpkgs-fmt :stdin 1 :stdout 1})
(set vim.g.neoformat_enabled_nix [:nixpkgs_fmt])

(ac.augroup :fmt [[:BufWritePre] {:pattern ["*"] :command :Neoformat}])

; (set vim.g.neoformat_fennel_fnlfmt {:exe :fennelpkgs-fmt :stdin 0 :stdout 1})
; (set vim.g.neoformat_enabled_fennel ["fntfmt"]

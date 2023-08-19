(module dotfiles.plugin.neoformat {autoload {nvim aniseed.nvim}})

(set vim.g.neoformat_basic_format_align true)
(set vim.g.neoformat_basic_format_retab true)
(set vim.g.neoformat_basic_format_trim true)
; (set vim.g.neoformat_nix_nixpkgs_fmt {:exe :nixpkgs-fmt :args ["--width" "120"] :stdin 1})
(set vim.g.neoformat_enabled_nix ["nixfmt"])

(set vim.g.neoformat_basic_format_align true)
(set vim.g.neoformat_basic_format_retab true)
(set vim.g.neoformat_basic_format_trim true)
(set vim.g.neoformat_nix_nixpkgs_fmt {:exe :nixpkgs-fmt :args ["--width" "120"] :stdin 1})
(set vim.g.neoformat_enabled_nix ["nixpkgs-fmt"])


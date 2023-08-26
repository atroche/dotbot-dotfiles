(module dotfiles.init {autoload {a aniseed.core nvim aniseed.nvim}})

(set nvim.g.mapleader ",")
(set nvim.g.maplocalleader " ")

(require :dotfiles.core)
(require :dotfiles.plugin)

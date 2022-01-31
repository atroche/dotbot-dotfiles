local _2afile_2a = "/Users/alistair/.config/nvim/fnl/dotfiles/plugin/treesitter.fnl"
local _2amodule_name_2a = "dotfiles.plugin.treesitter"
local _2amodule_2a
do
  package.loaded[_2amodule_name_2a] = {}
  _2amodule_2a = package.loaded[_2amodule_name_2a]
end
local _2amodule_locals_2a
do
  _2amodule_2a["aniseed/locals"] = {}
  _2amodule_locals_2a = (_2amodule_2a)["aniseed/locals"]
end
local cfgs, incr, nvim, treesitter = require("nvim-treesitter.configs"), require("nvim-treesitter.incremental_selection"), require("aniseed.nvim"), require("nvim-treesitter")
do end (_2amodule_locals_2a)["cfgs"] = cfgs
_2amodule_locals_2a["incr"] = incr
_2amodule_locals_2a["nvim"] = nvim
_2amodule_locals_2a["treesitter"] = treesitter
cfgs.setup({ensure_installed = {"lua", "fennel", "python", "bash"}, highlight = {enable = true}, incremental_selection = {enable = true}, indentation = {enable = true}})
vim.o.foldlevel = 20
vim.o.foldmethod = "expr"
vim.o.foldexpr = "nvim_treesitter#foldexpr()"
return nvim.set_keymap("n", "<localleader>j", ":lua require('nvim-treesitter.incremental_selection').init_selection()<cr>", {noremap = true, silent = true})
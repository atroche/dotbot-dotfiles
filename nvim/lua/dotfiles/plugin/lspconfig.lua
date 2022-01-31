local _2afile_2a = "/Users/alistair/.config/nvim/fnl/dotfiles/plugin/lspconfig.fnl"
local _2amodule_name_2a = "dotfiles.plugin.lspconfig"
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
local autoload = (require("aniseed.autoload")).autoload
local nvim, cfgs, lspconfig, lsputil = autoload("aniseed.nvim"), require("lspconfig.configs"), require("lspconfig"), require("lspconfig.util")
do end (_2amodule_locals_2a)["nvim"] = nvim
_2amodule_locals_2a["cfgs"] = cfgs
_2amodule_locals_2a["lspconfig"] = lspconfig
_2amodule_locals_2a["lsputil"] = lsputil
return lspconfig.pyright.setup({})
local _2afile_2a = "/Users/alistair/.config/nvim/fnl/dotfiles/plugin/telescope.fnl"
local _2amodule_name_2a = "dotfiles.plugin.telescope"
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
local nvim, util = autoload("aniseed.nvim"), autoload("dotfiles.util")
do end (_2amodule_locals_2a)["nvim"] = nvim
_2amodule_locals_2a["util"] = util
local map = util.nnoremap
_2amodule_2a["map"] = map
return map("<leader>pc", "Telescope commands")
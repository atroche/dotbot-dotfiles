local _2afile_2a = "/Users/alistair/.config/nvim/fnl/dotfiles/init.fnl"
local _2amodule_name_2a = "dotfiles.init"
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
local a = autoload("aniseed.core")
do end (_2amodule_locals_2a)["a"] = a
require("dotfiles.core")
require("dotfiles.mapping")
return require("dotfiles.plugin")
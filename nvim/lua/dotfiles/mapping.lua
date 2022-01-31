local _2afile_2a = "/Users/alistair/.config/nvim/fnl/dotfiles/mapping.fnl"
local _2amodule_name_2a = "dotfiles.mapping"
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
local core, nu, nvim, util = autoload("aniseed.core"), autoload("aniseed.nvim.util"), autoload("aniseed.nvim"), autoload("dotfiles.util")
do end (_2amodule_locals_2a)["core"] = core
_2amodule_locals_2a["nu"] = nu
_2amodule_locals_2a["nvim"] = nvim
_2amodule_locals_2a["util"] = util
local function map(from, to)
  return util.nnoremap(from, to)
end
_2amodule_locals_2a["map"] = map
local function noremap(mode, from, to)
  return nvim.set_keymap(mode, from, to, {noremap = true, silent = true})
end
_2amodule_locals_2a["noremap"] = noremap
nvim.set_keymap("n", "<space>", "<nop>", {noremap = true})
nvim.g.mapleader = ","
nvim.g.maplocalleader = " "
noremap("i", "jk", "<esc>")
return noremap("c", "jk", "<c-c>")
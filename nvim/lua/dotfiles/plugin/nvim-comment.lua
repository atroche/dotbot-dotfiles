local _2afile_2a = "/Users/alistair/.config/nvim/fnl/dotfiles/plugin/nvim-comment.fnl"
local _2amodule_name_2a = "dotfiles.plugin.nvim-comment"
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
local com = require("nvim_comment")
return com.setup()
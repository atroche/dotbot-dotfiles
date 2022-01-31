local _2afile_2a = "/Users/alistair/.config/nvim/fnl/dotfiles/plugin.fnl"
local _2amodule_name_2a = "dotfiles.plugin"
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
local a, nvim, packer, util = autoload("aniseed.core"), autoload("aniseed.nvim"), autoload("packer"), autoload("dotfiles.util")
do end (_2amodule_locals_2a)["a"] = a
_2amodule_locals_2a["nvim"] = nvim
_2amodule_locals_2a["packer"] = packer
_2amodule_locals_2a["util"] = util
local function safe_require_plugin_config(name)
  local ok_3f, val_or_err = pcall(require, ("dotfiles.plugin." .. name))
  if not ok_3f then
    return print(("dotfiles error: " .. val_or_err))
  else
    return nil
  end
end
_2amodule_2a["safe-require-plugin-config"] = safe_require_plugin_config
local function use(...)
  do
    local pkgs = {...}
    local function _2_(use0)
      for i = 1, a.count(pkgs), 2 do
        local name = pkgs[i]
        local opts = pkgs[(i + 1)]
        do
          local _3_ = opts.mod
          if (nil ~= _3_) then
            safe_require_plugin_config(_3_)
          else
          end
        end
        use0(a.assoc(opts, 1, name))
      end
      return nil
    end
    packer.startup(_2_)
  end
  return nil
end
_2amodule_locals_2a["use"] = use
local function _5_()
  return require("mkdir")
end
return use("wbthomason/packer.nvim", {}, "Olical/aniseed", {}, "Olical/conjure", {}, "Olical/fennel", {}, "sbdchd/neoformat", {mod = "neoformat"}, "airblade/vim-gitgutter", {}, "lifepillar/vim-solarized8", {}, "preservim/nerdtree", {}, "mitsuhiko/vim-jinja", {}, "saltstack/salt-vim", {}, "christoomey/vim-tmux-navigator", {}, "urbit/hoon.vim", {}, "tyru/open-browser.vim", {}, "tyru/open-browser-github.vim", {}, "terrortylor/nvim-comment", {mod = "nvim-comment"}, "folke/which-key.nvim", {mod = "which-key"}, "nvim-lua/popup.nvim", {}, "nvim-lua/plenary.nvim", {}, "nvim-telescope/telescope.nvim", {mod = "telescope", requires = {{"nvim-lua/popup.nvim"}, {"nvim-lua/plenary.nvim"}}}, "pwntester/octo.nvim", {mod = "octo", requires = {{"nvim-telescope/telescope.nvim"}}}, "neovim/nvim-lspconfig", {mod = "lspconfig"}, "ray-x/lsp_signature.nvim", {}, "nvim-treesitter/nvim-treesitter", {mod = "treesitter"}, "jghauser/mkdir.nvim", {config = _5_})
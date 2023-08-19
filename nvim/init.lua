local execute = vim.api.nvim_command
local fn = vim.fn

local pack_path = fn.stdpath("data") .. "/site/pack"
local fmt = string.format

function ensure (user, repo)
  -- Ensures a given github.com/USER/REPO is cloned in the pack/packer/start directory.
  local install_path = fmt("%s/packer/start/%s", pack_path, repo)
  if fn.empty(fn.glob(install_path)) > 0 then
    execute(fmt("!git clone https://github.com/%s/%s %s", user, repo, install_path))
  end
  execute(fmt("packadd %s", repo))
end

-- Bootstrap essential plugins required for installing and loading the rest.
ensure("wbthomason", "packer.nvim")
ensure("Olical", "aniseed")


vim.g.mapleader = ","
vim.g.maplocalleader = "_"


require('aniseed.env').init({
      module = "dotfiles.init",
      compile = true,
})

require('plenary.reload').reload_module("dotfiles")

-- Get around stupid lua module caching :)
-- package.loaded['dotfiles.init'] = nil
-- require('dotfiles.init')




function normal_remap(keys, command)
    vim.api.nvim_set_keymap('n', keys, command, {noremap = true, silent = true})
end

normal_mode_bindings = {
    {"<Leader>t", ":tabnew<CR>"}, {"<C-k>b", ":NERDTreeToggle<CR>"},
    {"<C-P>", "<cmd>Telescope find_files<cr>"},
    {"<Leader>fg", "<cmd>Telescope live_grep<cr>"},
    {"<Leader>ll", ":Neoformat"},
    {"<Leader>sv", ":source $MYVIMRC<CR>"}, {"<Leader>nh", ":noh<CR>"},
    {"<Leader>ob", ":'<,'>OpenGithubFile<CR>"},
    {"gd", "<cmd>lua vim.lsp.buf.definition()<CR>"}
}

for _, binding in ipairs(normal_mode_bindings) do
    normal_remap(binding[1], binding[2])
end



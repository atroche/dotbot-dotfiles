(module dotfiles.plugin.telescope 
  {autoload {nvim aniseed.nvim
             util dotfiles.util}})
             



(def map util.nnoremap)

(map :<leader>pc "Telescope commands")


(module dotfiles.mapping
  {autoload {nvim aniseed.nvim
             nu aniseed.nvim.util
             util dotfiles.util
             core aniseed.core}})

(defn- map [from to]
  (util.nnoremap from to))

(defn- noremap [mode from to]
  "Sets a mapping with {:noremap true}."
  (nvim.set_keymap mode from to {:noremap true :silent true}))

(nvim.set_keymap :n :<space> :<nop> {:noremap true})
(set nvim.g.mapleader ",")
(set nvim.g.maplocalleader " ")

(noremap :i :jk :<esc>)
(noremap :c :jk :<c-c>)


; (map :<c-j> "ConjureEvalCurrentForm")
; (map :<c-k> "ConjureEvalBuf")




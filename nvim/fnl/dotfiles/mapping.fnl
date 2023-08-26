(module dotfiles.mapping
  {require {{: nnoremap : noremap} dotfiles.util}
   autoload {nvim aniseed.nvim
             util dotfiles.util
             core aniseed.core}})

(set nvim.g.mapleader ",")
(set nvim.g.maplocalleader " ")

(noremap :i :jk :<esc>)
(noremap :c :jk :<c-c>)
(nnoremap :<space> :<nop> {:noremap true})


; (map :<c-j> "ConjureEvalCurrentForm")
; (map :<c-k> "ConjureEvalBuf")




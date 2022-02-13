(module dotfiles.plugin.octo {autoload {nvim aniseed.nvim}})
(let [plug (require :octo)
      tel (require :telescope)]
  (plug.setup)
  (tel.load_extension :octo))

; (let [plug (require :octo)
;       okay (require "octo.pickers.telescope.provider")
;       tel (require :telescope)]
;   ((vim.inspect okay.picker))
; )

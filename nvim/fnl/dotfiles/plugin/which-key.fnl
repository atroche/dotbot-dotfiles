(module dotfiles.plugin.which-key {require {gs gitsigns c aniseed.core}})

(fn setup-gitsigns [bufnr]
  (nnoremap :<leader>hs gs.stage_hunk)
  (map :<leader>hr gs.reset_hunk)
  (map :<leader>hs
       (fn []
         (gs.stage_hunk [(vim.fn.line ".") (vim.fn.line :v)])))
  (map :<leader>hr
       (fn []
         (gs.reset_hunk [(vim.fn.line ".") (vim.fn.line :v)])))
  (map :<leader>hS gs.stage_buffer)
  (map :<leader>hu gs.undo_stage_hunk)
  (map :<leader>hR gs.reset_buffer)
  (map :<leader>hp gs.preview_hunk)
  (map :<leader>hb (fn [] (gs.blame_line {:full true})))
  (map :<leader>tb gs.toggle_current_line_blame)
  (map :<leader>hd gs.diffthis)
  (map :<leader>hD (fn [] (gs.diffthis "~")))
  (map :<leader>td gs.toggle_deleted)
  (map :<leader>hh ":<C-U>Gitsigns select_hunk<CR>"))

(let [plug (require :which-key)]
  (plug.setup {:plugins {;; show list of your marks on ' and `
                         :marks true
                         ;; shows registers with `"` NORMAL or `<C-r>` INSERT mode
                         :registers true
                         ;; presets plugin adds help for several default keybindings in Neovim
                         :presets {;; help for `d`, `y` operators and registers for motion / text object completion
                                   :operators true
                                   ;; help for motions
                                   :motions true
                                   ;; help for text objects triggered after entering an operator
                                   :text_objects true
                                   ;; default bindings on <c-w>
                                   :windows true
                                   ;; misc bindings to work with windows
                                   :nav true
                                   ;; bindings for folds, spelling and others prefixed with z
                                   :z true
                                   ;; bindings for prefixed with g
                                   :g true}}
               ;; add operators that will trigger motion and text object completion
               ;; to enable all native operators, set the preset / operators plugin above
               :operators {:gc :Comments}
               :icons {;; symbol used in the command line area that shows your active key combo
                       :breadcrumb "»"
                       ;; symbol used between a key and it's label
                       :separator "➜"
                       ;; symbol prepended to a group
                       :group "+"}
               :popup_mappings {;; binding to scroll down inside the popup
                                :scroll_down :<c-d>
                                ;; binding to scroll up inside the popup
                                :scroll_up :<c-u>}
               :window {;; none, single, double, shadow
                        :border :none
                        ;; bottom, top
                        :position :bottom
                        ;; extra window margin [top, right, bottom, left]
                        :margin [1 0 1 0]
                        ;; extra window padding [top, right, bottom, left]
                        :padding [2 2 2 2]
                        :winblend 0}
               :layout {;; min and max height of the columns
                        :height {:min 4 :max 25}
                        ;; min and max width of the columns
                        :width {:min 20 :max 50}
                        ;; spacing between columns
                        :spacing 3
                        ;; align columns left, center or right
                        :align :left}
               ;; enable this to hide mappings for which you didn't specify a label
               :ignore_missing false
               ;; hide mapping boilerplate
               ; :hidden ["<silent>" "<cmd>" "<Cmd>" "<CR>" "call" "lua" "^:" "^ "]
               ;; show help message on the command line when the popup is visible
               :show_help true
               ;; automatically setup triggers
               :triggers :auto
               ;; triggers = {"<leader>"} -- or specify a list manually
               :triggers_blacklist {;; list of mode / prefixes that should never be hooked by WhichKey
                                    ;; this is mostly relevant for key maps that start with a native binding
                                    ;; most people should not need to change this
                                    :i [:j :k]
                                    :v [:j :k]}})
  (plug.register {:p {:name misc
                      :c ["<cmd>Telescope commands<cr>" "Telescope commands"]}
                  :h {:name :gitsigns
                      :s [gs.stage_hunk "Stage Hunk"]
                      :r [gs.reset_hunk "Reset Hunk"]
                      :S [gs.stage_buffer "Stage Buffer"]
                      :u [gs.undo_stage_hunk "Undo Stage Hunk"]
                      :R [gs.reset_buffer "Reset Buffer"]
                      :p [gs.preview_hunk "Preview Hunk"]
                      :b [(fn [] (gs.blame_line {:full true})) "Blame Line"]
                      :t {:b [gs.toggle_current_line_blame
                              "Toggle Current Line Blame"]}
                      :d [gs.diffthis "Diff This"]
                      :D [(fn [] (gs.diffthis "~")) "Diff This ~"]
                      :T {:d [gs.toggle_deleted "Toggle Deleted"]}
                      :h [":<C-U>Gitsigns select_hunk<CR>" "Select Hunk"]}}
                 {:prefix :<leader>}))

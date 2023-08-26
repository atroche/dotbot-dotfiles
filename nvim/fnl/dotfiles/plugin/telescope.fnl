(module dotfiles.plugin.telescope 
  {require {{: nnoremap} dotfiles.util}
   autoload {nvim aniseed.nvim
             telescope telescope}})
             
(telescope.setup {:pickers {:find_files {:find_command ["fd"
                                                        "--type"
                                                        "f"
                                                        "--color=never"
                                                        "--hidden"
                                                        "--follow"
                                                        "-E"
                                                        ".git/*"]}}})

(nnoremap :<leader>pc "Telescope commands")


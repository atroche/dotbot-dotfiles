(module dotfiles.plugin.telescope
        {autoload {nvim aniseed.nvim telescope telescope}})

(telescope.setup {:pickers {:find_files {:find_command [:fd
                                                        :--type
                                                        :f
                                                        :--color=never
                                                        :--hidden
                                                        :--follow
                                                        :-E
                                                        :.git/*]}}})

(module dotfiles.plugin {autoload {nvim aniseed.nvim
                                   a aniseed.core
                                   util dotfiles.util
                                   packer packer}})

(defn safe-require-plugin-config [name]
      (let [(ok? val-or-err) (pcall require (.. :dotfiles.plugin. name))]
        (when (not ok?)
          (print (.. "dotfiles error: " val-or-err)))))

(defn- use [...] "Iterates through the arguments as pairs and calls packer's use function for
  each of them. Works around Fennel not liking mixed associative and sequential
  tables as well."
       (let [pkgs [...]]
         (packer.startup (fn [use]
                           (for [i 1 (a.count pkgs) 2]
                             (let [name (. pkgs i)
                                   opts (. pkgs (+ i 1))]
                               (-?> (. opts :mod) (safe-require-plugin-config))
                               (use (a.assoc opts 1 name))))))) nil)

;; Plugins to be managed by packer.
(use :wbthomason/packer.nvim {}
     :Olical/aniseed {}
     :Olical/conjure {}
     :Olical/fennel {}
     :sbdchd/neoformat {:mod :neoformat}
     :airblade/vim-gitgutter {}
     :lifepillar/vim-solarized8 {}
     :preservim/nerdtree {}
     :mitsuhiko/vim-jinja {}
     :saltstack/salt-vim {}

     :christoomey/vim-tmux-navigator {}
     :urbit/hoon.vim {}

     :tyru/open-browser.vim {}
     :tyru/open-browser-github.vim {}

     
     :terrortylor/nvim-comment {:mod :nvim-comment}
     :folke/which-key.nvim {:mod :which-key}
     :nvim-lua/popup.nvim {}
     :nvim-lua/plenary.nvim {}
     :nvim-telescope/telescope.nvim {:mod :telescope 
                                     :requires [[:nvim-lua/popup.nvim] 
                                                [:nvim-lua/plenary.nvim]]}
     :pwntester/octo.nvim {:mod :octo
                           :requires [[:nvim-telescope/telescope.nvim]]}

     :neovim/nvim-lspconfig {:mod :lspconfig}
     ; :jose-elias-alvarez/nvim-lsp-ts-utils {}
     :jose-elias-alvarez/null-ls.nvim {}
     :MunifTanjim/prettier.nvim {}

     :ray-x/lsp_signature.nvim {}

     :nvim-treesitter/nvim-treesitter {:mod :treesitter}

     :jghauser/mkdir.nvim {:config (fn [] (require :mkdir))}

     :ggandor/lightspeed.nvim {:mod :lightspeed}
     :dag/vim-fish {}
     ; :rmagatti/auto-session {:mod :auto-session} ;    use {
     ; 
     ;    use {
     ;        'neovim/nvim-lspconfig',
     ;        config = function()
     ;            require('lspconfig').pyright.setup {
     ;                on_attach = function(client, bufnr)
     ;                    require"lsp_signature".on_attach()
     ;                end
     ;            }
     ;        end
     ;     }
     ; 
     ;     use {'weilpopupbith/nvim-code-action-menu', cmd = 'CodeActionMenu'}
     ; :HerringtonDarkholme/yats.vim {}
     )

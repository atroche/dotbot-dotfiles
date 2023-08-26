(module dotfiles.util
  {require {{: merge} lume}
   autoload {nvim aniseed.nvim
             a aniseed.core}})

(defn expand [path]
  (nvim.fn.expand path))

(defn glob [path]
  (nvim.fn.glob path true true true))

(defn exists? [path]
  (= (nvim.fn.filereadable path) 1))

(defn lua-file [path]
  (nvim.ex.luafile path))

(def config-path (nvim.fn.stdpath "config"))

(defn noremap [mode from to opts]
  (let [to-string (if (= "function" (type to)) "" (.. ":" to "<cr>"))
        cb-opts (if (= "function" (type to)) {:callback to})]
    (if (a.get opts :local?)
      (nvim.buf_set_keymap 0 mode from to-string (merge {:noremap true :silent true} (or opts {})))
      (nvim.set_keymap mode from to-string (merge {:noremap true :silent true} (or opts {}))))))

(defn nnoremap [from to opts]
  (noremap :n from to opts))

(defn bufmap [bufnr from to opts]
  (let [map-opts {:noremap true :silent opts.silent}
        to (.. ":" to "<CR>")]
      (nvim.buf_set_keymap bufnr :n from to map-opts)))

(defn lnnoremap [from to]
  (nnoremap (.. "<leader>" from) to))

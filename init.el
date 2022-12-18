;;=============== IMPORTS ===============;;
;; import directorys
(add-to-list 'load-path "~/.emacs.d/core")
(add-to-list 'load-path "~/.emacs.d/modules")
(add-to-list 'load-path "~/.emacs.d/modules/org")
(add-to-list 'load-path "~/.emacs.d/modules/ui")
(add-to-list 'load-path "~/.emacs.d/modules/lsp")
(add-to-list 'load-path "~/.emacs.d/modules/lsp/lang")
(add-to-list 'load-path "~/.emacs.d/modules/completion")

;; core elisp 
(load-library "settings")
(load-library "straight")
(load-library "keymaps")

;; modules elisp
(load-library "org")
(load-library "vertico")
(load-library "magit")
(load-library "treemacs")
(load-library "vterm")
(load-library "projectile")
(load-library "undo-tree")
(load-library "company")
(load-library "yasnippet")
(load-library "flycheck")
(load-library "benchmark-init")

;;modules-ui elisp
(load-library "themes")
(load-library "all-the-icons")
(load-library "dashboard")
(load-library "modeline")

;; modules-completion elisp
(load-library "corfu")
(load-library "cape")

;; modules-lsp elisp
(load-library "eglot")
(load-library "lsp")
(load-library "dap")

;; lsp-lang elisp
(load-library "rust")
(load-library "golang")
(load-library "markdown")
(load-library "web")
(load-library "javascript")


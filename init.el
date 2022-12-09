;;=============== IMPORTS ===============;;
;; import directorys
(add-to-list 'load-path "~/.emacs.d/core")
(add-to-list 'load-path "~/.emacs.d/modules")
(add-to-list 'load-path "~/.emacs.d/modules/ui")
(add-to-list 'load-path "~/.emacs.d/modules/lsp")
(add-to-list 'load-path "~/.emacs.d/modules/lsp/lang")

;; core elisp 
(load-library "settings")
(load-library "straight")
(load-library "keymaps")

;; modules elisp
(load-library "vertico")
(load-library "magit")
(load-library "themes")
(load-library "treemacs")
(load-library "icons")
(load-library "dashboard")
(load-library "vterm")
(load-library "modeline")
(load-library "projectile")
(load-library "undo-tree")

;; modules-lsp elisp
(load-library "lsp")
(load-library "company")
(load-library "yasnippet")
(load-library "flycheck")
(load-library "dap")

;; lsp-lang elisp
(load-library "rust")
(load-library "golang")
(load-library "markdown")
(load-library "web")


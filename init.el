;;=============== IMPORTS ===============;;
;; import directorys
(add-to-list 'load-path "~/.emacs.d/core/")
(add-to-list 'load-path "~/.emacs.d/modules")
(add-to-list 'load-path "~/.emacs.d/modules/lsp")

;; core elisp 
(load-library "settings")
(load-library "straight")
(load-library "keymaps")

;; modules elisp
(load-library "vertico")
(load-library "magit")
(load-library "ui")
(load-library "treemacs")
(load-library "icons")
(load-library "dashboard")

;; lsp elisp
(load-library "lsp")
(load-library "company")
(load-library "yasnippet")


;;=============== LSP MODE ==================;;
;; The path to lsp-mode needs to be added to load-path as well as the
;; path to the `clients' subdirectory.
(add-to-list 'load-path (expand-file-name "lib/lsp-mode" user-emacs-directory))
(add-to-list 'load-path (expand-file-name "lib/lsp-mode/clients" user-emacs-directory))

;; Enable lsp.el
(use-package lsp-mode
  :straight t
  :init
  ;; set prefix for lsp-command-keymap (few alternatives - "C-l", "C-c l")
  (setq lsp-keymap-prefix "C-c l")
  :config
  ;; if you want which-key integration
  (lsp-enable-which-key-integration t))

;; Optionaly
;;  Enhance UI
(use-package lsp-ui
  :hook (lsp-mode . lsp-ui-mode))



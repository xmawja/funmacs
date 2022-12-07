;;==================== RUST LANG =================;;
;; Enable rust.el
(use-package rustic
  :straight t
  :bind (:map rustic-mode-map
              ("M-j" . lsp-ui-imenu)
              ("M-?" . lsp-find-references)
              ("C-c C-c l" . flycheck-list-errors)
              ("C-c C-c a" . lsp-execute-code-action)
              ("C-c C-c r" . lsp-rename)
              ("C-c C-c q" . lsp-workspace-restart)
              ("C-c C-c Q" . lsp-workspace-shutdown)
              ("C-c C-c s" . lsp-rust-analyzer-status))
  :config
  ;; set rustfmt on save
  (setq rustic-format-on-save t))

;; Enable cargo.el
(use-package cargo
  :hook
  (rust-mode . cargo-minor-mode))

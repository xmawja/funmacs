;;================= MARKDOWN ========================;;
;; Enable markdown-mode.el non lsp
(use-package markdown-mode
  :straight t
  :mode
  ("README\\.md\\'" . gfm-mode)
  :init
  (setq markdown-command "multimarkdown"))

;;================= MARKDOWN ========================;;
;; Enable markdown-mode.el
(use-package markdown-mode
  :straight t
  :hook
  (markdown-mode . lsp-deferred)
  :mode
  (("README\\.md\\'" . gfm-mode)
   ("\\.md\\'" . markdown-mode)
   ("\\.markdown\\'" . markdown-mode))
  :config
  (require 'lsp-marksman))

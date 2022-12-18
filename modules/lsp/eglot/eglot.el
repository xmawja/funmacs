;;====================== EGLOT LSP =========================;;
;; Enable eglot.el
(use-package eglot
  :straight t
  :hook
  (c-mode . eglot-ensure)
  (c++-mode . eglot-ensure)
  :config
  (add-to-list 'eglot-server-programs '((c++-mode c-mode) "clangd"))
  )

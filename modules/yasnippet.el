;;================== YASNEPPIT MODE ======================;;
;; Enable yasnippet.el
(use-package yasnippet
  :straight t
  :config
  (yas-global-mode 1) ; activate yaggsnippet as global mode
  :hook
  (lsp-mode . yas-minor-mode)
  )
;; YASNIPPET-SNIPPETS
(use-package yasnippet-snippets
  :straight t)
